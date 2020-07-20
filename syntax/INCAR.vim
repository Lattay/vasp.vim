" Vim syntax file
" Language:	VASP's INCAR
" Maintainer:	Théo Cavignac <theo.cavignac@gmail.com>
" Last Change:	2020 Jul 20
if exists("b:current_syntax")
    finish
endif

syntax keyword incarKeyword nextgroup=incarStatement
            \ ADDGRID AEXX AGGAC AGGAX ALDAC ALGO AMIN AMIX AMIX_MAG ANDERSEN_PROB ANTIRES
            \ APACO BMIX BMIX_MAG CH_LSPEC CH_NEDOS CH_SIGMA CLL CLN CLNT CLZ CMBJ CMBJA CMBJB
            \ CSHIFT DEPER DIMER_DIST DIPOL DQ EBREAK EDIFF EDIFFG EFIELD EFIELD_PEAD EINT
            \ EMAX EMIN ENAUG ENCUT ENCUTFOCK ENCUTGW ENCUTGWSOFT ENINI EPSILON ESTOP EVENONLY
            \ EVENONLYGW FERDO FERWE FINDIFF GGA GGA_COMPAT HFLMAX HFRCUT HFSCREEN HILLS_BIN
            \ HILLS_H HILLS_W HITOLER I_CONSTRAINED_M IALGO IBAND IBRION ICHARG ICHIBARE
            \ ICORELEVEL IDIPOL IEPSILON IGPAR IMAGES IMIX INCREM INIMIX INIWAV IPEAD ISIF
            \ ISMEAR ISPIN ISTART ISYM IVDW IWAVPR KBLOCK KGAMMA KPAR KPOINT_BSE KPUSE
            \ KSPACING LADDER LAECHG LAMBDA LANGEVIN_GAMMA LANGEVIN_GAMMA_L LASPH LASYNC
            \ LATTICE_CONSTRAINTS LBERRY LBLUEOUT LBONE LCALCEPS LCALCPOL LCHARG LCHIMAG LCORR
            \ LDAU LDAUJ LDAUL LDAUPRINT LDAUTYPE LDAUU LDIAG LDIPOL LEFG LELF LEPSILON
            \ LFINITE_TEMPERATURE LFOCKACE LFOCKAEDFT LHARTREE LHFCALC LHYPERFINE LKPROJ
            \ LLRAUG LMAXFOCK LMAXFOCKAE LMAXMIX LMAXPAW LMAXTAU LMIXTAU LMODELHF LMONO LMP2LT
            \ LNABLA LNMR_SYM_RED LNONCOLLINEAR LOCPROJ LOPTICS LORBIT LORBMOM LPARD LPEAD
            \ LPLANE LREAL LRPA LSCAAWARE LSCALAPACK LSCALU LSCSGRAD LSELFENERGY LSEPB LSEPK
            \ LSMP2LT LSORBIT LSPECTRAL LSPECTRALGW LSPIRAL LSUBROT LTHOMAS LUSE_VDW
            \ LVDW_EWALD LVDW_ONECELL LVDWEXPANSION LVHAR LVTOT LWANNIER90 LWANNIER90_RUN
            \ LWAVE LWRITE_MMN_AMN LWRITE_UNK LWRITE_WANPROJ LZEROZ M_CONSTR MAGMOM MAXMEM
            \ MAXMIX MDALGO METAGGA MINROT MIXPRE ML_FF_AFILT2_MB ML_FF_CDOUB ML_FF_CSF
            \ ML_FF_CSIG ML_FF_CSLOPE ML_FF_CTIFOR ML_FF_EATOM ML_FF_IAFILT2_MB
            \ ML_FF_IBROAD1_MB ML_FF_IBROAD2_MB ML_FF_ICOUPLE_MB ML_FF_ICUT1_MB ML_FF_ICUT2_MB
            \ ML_FF_IERR ML_FF_IREG_MB ML_FF_ISAMPLE ML_FF_ISCALE_TOTEN_MB ML_FF_ISOAP1_MB
            \ ML_FF_ISOAP2_MB ML_FF_ISTART ML_FF_IWEIGHT ML_FF_LAFILT2_MB ML_FF_LBASIS_DISCARD
            \ ML_FF_LCONF_DISCARD ML_FF_LCOUPLE_MB ML_FF_LCRITERIA ML_FF_LEATOM_MB
            \ ML_FF_LHEAT_MB ML_FF_LMAX2_MB ML_FF_LMLFF ML_FF_LNORM1_MB ML_FF_LNORM2_MB
            \ ML_FF_MB_MB ML_FF_MCONF ML_FF_MCONF_NEW ML_FF_MHIS ML_FF_MRB1_MB ML_FF_MRB2_MB
            \ ML_FF_MSPL1_MB ML_FF_MSPL2_MB ML_FF_NATOM_COUPLED_MB ML_FF_NDIM_SCALAPACK
            \ ML_FF_NHYP1_MB ML_FF_NHYP2_MB ML_FF_NMDINT ML_FF_NR1_MB ML_FF_NR2_MB
            \ ML_FF_NWRITE ML_FF_RCOUPLE_MB ML_FF_RCUT1_MB ML_FF_RCUT2_MB ML_FF_SIGV0_MB
            \ ML_FF_SIGW0_MB ML_FF_SION1_MB ML_FF_SION2_MB ML_FF_W1_MB ML_FF_W2_MB
            \ ML_FF_WTIFOR ML_FF_WTOTEN ML_FF_WTSIF NBANDS NBANDSGW NBANDSO NBANDSV NBLK
            \ NBLOCK NBMOD NBSEEIG NCORE NCORE_IN_IMAGE1 NCRPA_BANDS NDAV NEDOS NELECT NELM
            \ NELMDL NELMIN NFREE NGX NGXF NGY NGYF NGYROMAG NGZ NGZF NKRED NKREDX NKREDY
            \ NKREDZ NLSPLINE NMAXFOCKAE NMAXFOCKAE LMAXFOCKAE NOMEGA NOMEGAPAR NOMEGAR NPACO
            \ NPAR NPPSTR NSIM NSTORB NSUBSYS NSW NTARGET_STATES NTAUPAR NUPDOWN NWRITE
            \ ODDONLY ODDONLYGW OFIELD_A OFIELD_KAPPA OFIELD_Q6_FAR OFIELD_Q6_NEAR OMEGAMAX
            \ OMEGAMIN OMEGATL PARAM1 PARAM2 PFLAT PHON_LBOSE PHON_LMC PHON_NSTRUCT
            \ PHON_NTLIST PHON_TLIST PLEVEL PMASS POMASS POTIM PREC PRECFOCK PROUTINE PSTRESS
            \ PSUBSYS PTHRESHOLD QMAXFOCKAE QSPIRAL QUAD_EFG RANDOM_SEED ROPT RWIGS SAXIS
            \ SCALEE SCSRAD SHAKEMAXITER SHAKETOL SIGMA SMASS SMEARINGS SPRING STEP_MAX
            \ STEP_SIZE SYMPREC SYSTEM TEBEG TEEND TIME TSUBSYS VALUE_MAX VALUE_MIN VCA
            \ VCAIMAGES VCUTOFF VDW_A1 VDW_A2 VDW_C6 VDW_CNRADIUS VDW_D VDW_R0 VDW_RADIUS
            \ VDW_S6 VDW_S8 VDW_SR VOSKOWN WC WEIMIN ZVAL

highlight link incarKeyword Keyword

" the \v key means vim's very magic regex 
syntax region incarComment contained start=/[!#]/ end=/$/
highlight link incarComment Comment

syntax keyword incarConstant contained Eigenval
syntax keyword incarConstant contained ACCURATE Accurate HIGH High NORMAL Normal LOW Low
syntax keyword incarConstant contained C
syntax keyword incarConstant contained NONE
syntax match incarConstant contained ".TRUE."
syntax match incarConstant contained ".FALSE."
syntax match incarConstant contained "\v(([0-9]*\.)?[0-9]+E?-?[0-9]*\s?)*"

" Integers
syntax match incarNumber contained /\<\d\+\(_\a\w*\)\=\>/
" floating point number, without a decimal point
syntax match incarNumber contained /\<\d\+[deq][-+]\=\d\+\(_\a\w*\)\=\>/
" floating point number, starting with a decimal point
syntax match incarNumber contained /\.\d\+\([deq][-+]\=\d\+\)\=\(_\a\w*\)\=\>/
" floating point number, no digits after decimal
syntax match incarNumber contained /\<\d\+\.\([deq][-+]\=\d\+\)\=\(_\a\w*\)\=\>/
" floating point number, D or Q exponents
syntax match incarNumber contained /\<\d\+\.\d\+\([dq][-+]\=\d\+\)\=\(_\a\w*\)\=\>/
" floating point number
syntax match incarNumber contained /\<\d\+\.\d\+\(e[-+]\=\d\+\)\=\(_\a\w*\)\=\>/

highlight link incarNumber Number
highlight link incarConstant Constant

syntax match incarStatement contains=incarConstant,incarComment keepend /=.*$/
highlight link incarStatement Statement

syntax match incarTrash /^ *[^#].*=.*$/
highlight link incarTrash Error

let b:current_syntax = "INCAR"
