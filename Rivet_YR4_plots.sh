#!/bin/bash

# load environment variables
# cd /afs/cern.ch/work/p/perrozzi/private/git/Hbb/validations/CMSSW_7_4_1_patch4/src/ # 1.8.2
# cd /afs/cern.ch/work/p/perrozzi/private/git/Hbb/validations/CMSSW_7_1_20_patch3/src # 1.8.2
cd /afs/cern.ch/work/p/perrozzi/private/git/Hbb/validations/CMSSW_7_6_0_pre2/src # 2.2.1
eval `scramv1 runtime -sh`
cd -

# rivet -v
# exit 1

# PATHS and DIRECTORIES

OUTDIR=Plots/
RIVETDIR=./

# HZ(->LL)
# STABLE
HIST_ZLL_HSTABLE_POWHEG_PY6=powheg/HZLL_stableHiggs.yoda
HIST_ZLL_HSTABLE_MG5AMCNLO_PY8=mg5amcnlo/ZH_PY8_5M.yoda
HIST_ZLL_HSTABLE_MG5AMCNLO_HW7=mg5amcnlo/ZHjets_HW7-FxFx.yoda
HIST_ggHZLL_HSTABLE_MG5AMCNLO_PY8=mg5amcnlo/ggZH1M_merged_hadronize_Hnotdecayed.yoda
# UNSTABLE
HIST_ZLL_HDECAYED_POWHEG_PY6=powheg/HZLL_decayedHiggs.yoda

# Make plots
export RIVET_ANALYSIS_PATH=$RIVETDIR

# Z->LL

# rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL \
# $HIST_ZLL_POWHEG:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$HZ(\to ll)j$  POWHEG-BOX'

rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_HSTABLE_POW_vs_aMCNLO_nonorm \
$HIST_ZLL_HSTABLE_POWHEG_PY6:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='ZllH POWHEG-BOX+PY6' \
$HIST_ZLL_HSTABLE_MG5AMCNLO_PY8:ErrorBands=1:ErrorBandColor=green:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=green:LineColor=black:Title='ZllH MG5AMCNLO+PY8' \
$HIST_ggHZLL_HSTABLE_MG5AMCNLO_PY8:ErrorBands=1:ErrorBandColor=cyan:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=green:LineColor=blue:Title='ggZllH MG5AMCNLO+PY8'

rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_HSTABLE_POW_vs_aMCNLO_norm \
$HIST_ZLL_HSTABLE_POWHEG_PY6:NormalizeToIntegral=1:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='ZllH POWHEG-BOX+PY6' \
$HIST_ZLL_HSTABLE_MG5AMCNLO_PY8:NormalizeToIntegral=1:ErrorBands=1:ErrorBandColor=green:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=green:LineColor=black:Title='ZllH MG5AMCNLO+PY8' \
$HIST_ggHZLL_HSTABLE_MG5AMCNLO_PY8:NormalizeToIntegral=1:ErrorBands=1:ErrorBandColor=cyan:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=green:LineColor=blue:Title='ggZllH MG5AMCNLO+PY8'

# rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_HSTABLE_aMCNLO_PY_vs_HW7 \
# $HIST_ZLL_HSTABLE_MG5AMCNLO_PY8:NormalizeToIntegral=1:ErrorBands=1:ErrorBandColor=green:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=green:LineColor=black:Title='MG5AMCNLO+PY8' \
# $HIST_ZLL_HSTABLE_MG5AMCNLO_HW7:NormalizeToIntegral=1:ErrorBands=1:ErrorBandColor=blue:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=blue:LineColor=cyan:Title='MG5AMCNLO+HW7'

# rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_HUNDECAYED \
# $HIST_ZLL_POWHEG:ErrorBands=1:ErrorBandColor=blue:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=blue:LineColor=blue:Title='$HZ(\to ll)j$  POWHEG-BOX' \
# $HIST_ZLL_HAD_POWHEG:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$H(\to b\bar{b})Z(\to ll)j$  POWHEG-BOX'


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
