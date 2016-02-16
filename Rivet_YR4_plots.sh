#!/bin/bash

cd /afs/cern.ch/work/p/perrozzi/private/git/Hbb/validations/CMSSW_7_4_1_patch4/src/
eval `scramv1 runtime -sh`
cd -

# PATHS and DIRECTORIES

OUTDIR=Plots/
RIVETDIR=./

## POWHEG FILES:
# HZ(->LL)
HIST_ZLL_POWHEG=powheg/HZLL_stableHiggs.yoda
HIST_ZLL_HAD_POWHEG=powheg/HZLL_decayedHiggs.yoda

# HIST_ZLL_MG5AMCNLO=mg5amcnlo/HZLL_stableHiggs.yoda
HIST_ZLL_HAD_MG5AMCNLO=mg5amcnlo/ZH_PY8_5M.yoda

# Make plots
export RIVET_ANALYSIS_PATH=$RIVETDIR

# Z->LL

rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL \
$HIST_ZLL_POWHEG:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$HZ(\to ll)j$  POWHEG-BOX'

rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_HAD \
$HIST_ZLL_HAD_POWHEG:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$H(\to b\bar{b})Z(\to ll)j$  POWHEG-BOX' \
$HIST_ZLL_HAD_MG5AMCNLO:ErrorBands=1:ErrorBandColor=green:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=green:LineColor=red:Title='$H(\to b\bar{b})Z(\to ll)j$  MG5AMCNLO' \

# rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_COMP \
$HIST_ZLL_POWHEG:ErrorBands=1:ErrorBandColor=blue:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=blue:LineColor=blue:Title='$HZ(\to ll)j$  POWHEG-BOX' \
$HIST_ZLL_HAD_POWHEG:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$H(\to b\bar{b})Z(\to ll)j$  POWHEG-BOX'


# HZ(->NN)
# HIST_ZNN_POWHEG=$RUNDIR/Run-yr4-nn-scalevar-rivet/HZNN.yoda
# HIST_ZNN_HAD_POWHEG=$RUNDIR/Run-yr4-nn-scalevar-rivet/HZNN-HAD.yoda

# rivet-mkhtml --cm -o $OUTDIR/YR4_HZNN \
# $HIST_ZNN_POWHEG:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$HZ(\to \nu\nu)j$  POWHEG-BOX'


# rivet-mkhtml --cm -o $OUTDIR/YR4_HZNN_HAD \
# $HIST_ZNN_HAD_POWHEG:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$H(\to b\bar{b})Z(\to \nu\nu)j$  POWHEG-BOX'

# rivet-mkhtml --cm -o $OUTDIR/YR4_HZNN_COMP \
# $HIST_ZNN_POWHEG:ErrorBands=1:ErrorBandColor=blue:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=blue:LineColor=blue:Title='$HZ(\to \nu\nu)j$  POWHEG-BOX' \
# $HIST_ZNN_HAD_POWHEG:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$H(\to b\bar{b})Z(\to \nu\nu)j$  POWHEG-BOX'
