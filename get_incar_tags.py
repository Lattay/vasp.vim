# /// script
# requires-python = ">=3.12"
# dependencies = [
#     "scrapy",
# ]
# ///

# MIT License

# Copyright (c) 2025 Xin Zhao

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

import json
from contextlib import redirect_stdout, redirect_stderr
import scrapy
from scrapy.crawler import CrawlerProcess
from urllib.parse import urljoin


class SimpleIncarTagSpider(scrapy.Spider):
    name = "simple_incar_tags"
    allowed_domains = ["www.vasp.at"]
    start_urls = ["https://www.vasp.at/wiki/index.php/Category:INCAR_tag"]

    custom_settings = {
        "USER_AGENT": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36",
        "DOWNLOAD_DELAY": 1,
        "LOG_LEVEL": "INFO",
    }

    def parse(self, response):
        tags = response.xpath('//div[@class="mw-category-group"]//li/a')

        for tag_link in tags:
            tag_text = tag_link.xpath("normalize-space(.)").get()
            relative_url = tag_link.xpath("@href").get()
            if tag_text and relative_url:
                absolute_url = urljoin(response.url, relative_url)
                yield {"tag": tag_text, "url": absolute_url}

        next_page = response.xpath('//a[contains(., "next page")]/@href').get()
        if next_page:
            next_page_url = urljoin(response.url, next_page)
            yield scrapy.Request(next_page_url, callback=self.parse)


def run_spider(scrap_file):
    process = CrawlerProcess(
        settings={
            "FEEDS": {
                scrap_file: {
                    "format": "json",
                    "encoding": "utf8",
                    "indent": 4,
                    "overwrite": True,
                },
            },
            "LOG_LEVEL": "INFO",
        }
    )

    process.crawl(SimpleIncarTagSpider)
    process.start()


def make_syntax_directive(tags):
    lines = ["syntax keyword incarKeyword nextgroup=incarValidStatement"]

    current_line = ["    \\"]
    current_line_len = 5
    for tag in tags:
        if ":" in tag:
            continue

        if current_line_len + 1 + len(tag) > 80:
            lines.append(" ".join(current_line))

            current_line_len = 5
            current_line = ["    \\"]

        current_line.append(tag)
        current_line_len += 1 + len(tag)

    if len(current_line) > 1:
        lines.append(" ".join(current_line))

    print("\n".join(lines))


if __name__ == "__main__":
    scrap_file = "incar_tags.json"
    dest_file = "incar_tags.vim"

    with open("scrapy.log", "w") as out, redirect_stdout(out), redirect_stderr(out):
        run_spider(scrap_file)

    with open(scrap_file, "r") as f:
        tags = json.load(f)

    make_syntax_directive(e["tag"].replace(" ", "_") for e in tags)
