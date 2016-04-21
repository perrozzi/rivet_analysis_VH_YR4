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
export RIVET_ANALYSIS_PATH=$RIVETDIR


# HZ(->LL)
# STABLE
HIST_ZLL_HSTABLE_POWHEG_PY6=powheg/HZLL_stableHiggs_new.yoda
HIST_ZLL_HSTABLE_MG5AMCNLO_PY8=mg5amcnlo/ZHjets_PY8-FxFx_Hnotdecayed_new.yoda
HIST_ZLL_HSTABLE_MG5AMCNLO_HW7=mg5amcnlo/ZHjets_HW7-FxFx_Hnotdecayed_new.yoda
HIST_ggHZLL_HSTABLE_MG5AMCNLO_PY8_UNMERGED=mg5amcnlo/gghz_MC_ZllHbb_undecayed_new.yoda
# HIST_ggHZLL_HSTABLE_MG5AMCNLO_PY8=mg5amcnlo/ggZH1M_merged_hadronize_Hnotdecayed.yoda
# DECAYED
HIST_ZLL_HDECAYED_POWHEG_PY6=powheg/HZLL-decayedHiggs_new.yoda
HIST_ZLL_HDECAYED_MG5AMCNLO_HW7=mg5amcnlo/ZHjets_HW7-FxFx_Hdecayed_new.yoda
HIST_ZLL_HDECAYED_MG5AMCNLO_PY8=mg5amcnlo/ZllHbb_PY8-FxFx_Hdecayed_new.yoda

# HZ(->NN)
# STABLE
HIST_ZNN_HSTABLE_POWHEG_PY6=powheg/HZNN_stableHiggs_new.yoda
# HIST_ZNN_HSTABLE_MG5AMCNLO_PY8=mg5amcnlo/ZHjets_PY8-FxFx_Hnotdecayed_new.yoda
HIST_ZNN_HSTABLE_MG5AMCNLO_HW7=mg5amcnlo/ZnunuHjets_HW7-FxFx_Hnotdecayed_new.yoda
# HIST_ggHZNN_HSTABLE_MG5AMCNLO_PY8=mg5amcnlo/ggZH1M_merged_hadronize_Hnotdecayed.yoda
# HIST_ggHZNN_HSTABLE_MG5AMCNLO_PY8_UNMERGED=mg5amcnlo/gghz_MC_ZNNHbb_undecayed_new.yoda
# DECAYED
HIST_ZNN_HDECAYED_POWHEG_PY6=powheg/HZNN-decayedHiggs_new.yoda
HIST_ZNN_HDECAYED_MG5AMCNLO_HW7=mg5amcnlo/ZnunuHjets_HW7-FxFx_Hdecayed_new.yoda
HIST_ZNN_HDECAYED_MG5AMCNLO_PY8=mg5amcnlo/ZnnH_PY8-FxFx_Hnotdecayed_new.yoda

# HWP-decayedHiggs_new
# HWM-decayedHiggs_new
# HWP_stableHiggs_new
# HWM_stableHiggs_new
# WlnuH_PY8-FxFx_Hnotdecayed_new

# Make plots

# YR4_HZLL_HDECAYED_POW_vs_aMCNLO
rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_HDECAYED_POW_vs_aMCNLO \
$HIST_ZLL_HDECAYED_POWHEG_PY6:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=orange:Title='ZllH POWHEG+PY6' \
$HIST_ZLL_HDECAYED_MG5AMCNLO_PY8:ErrorBands=1:ErrorBandColor=green:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=green:LineColor=green:Title='ZllH MG5_aMC+PY8' \
$HIST_ZLL_HDECAYED_MG5AMCNLO_HW7:ErrorBands=1:ErrorBandColor=cyan:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=blue:LineColor=blue:Title='ZllH MG5_aMC+HW7' \

# YR4_HZLL_HSTABLE_POW_vs_aMCNLO
rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_HSTABLE_POW_vs_aMCNLO \
$HIST_ZLL_HSTABLE_POWHEG_PY6:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=orange:Title='ZllH POWHEG+PY6' \
$HIST_ZLL_HSTABLE_MG5AMCNLO_PY8:ErrorBands=1:ErrorBandColor=green:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=green:LineColor=green:Title='ZllH MG5_aMC+PY8' \
$HIST_ZLL_HSTABLE_MG5AMCNLO_HW7:ErrorBands=1:ErrorBandColor=cyan:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=blue:LineColor=blue:Title='ZllH MG5_aMC+HW7' \

# YR4_HZLL_vs_ggHZLL_HSTABLE_aMCNLO
rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_vs_ggHZLL_HSTABLE_aMCNLO \
$HIST_ZLL_HSTABLE_MG5AMCNLO_PY8:ErrorBands=1:ErrorBandColor=green:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=green:LineColor=green:Title='ZllH MG5_aMC+PY8' \
$HIST_ggHZLL_HSTABLE_MG5AMCNLO_PY8_UNMERGED:ErrorBands=1:ErrorBandColor=gray:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=gray:LineColor=gray:Title='ggZllH MG5_aMC+PY8'

# YR4_HZNN_HSTABLE_POW_vs_aMCNLO
rivet-mkhtml --cm -o $OUTDIR/YR4_HZNN_HSTABLE_POW_vs_aMCNLO \
$HIST_ZNN_HSTABLE_POWHEG_PY6:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=orange:Title='ZNNH POWHEG+PY6' \
$HIST_ZNN_HSTABLE_MG5AMCNLO_HW7:ErrorBands=1:ErrorBandColor=cyan:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=blue:LineColor=blue:Title='ZNNH MG5_aMC+HW7' \

# YR4_HZNN_HDECAYED_POW_vs_aMCNLO
rivet-mkhtml --cm -o $OUTDIR/YR4_HZNN_HDECAYED_POW_vs_aMCNLO \
$HIST_ZNN_HDECAYED_POWHEG_PY6:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=orange:Title='ZNNH POWHEG+PY6' \
$HIST_ZNN_HDECAYED_MG5AMCNLO_PY8:ErrorBands=1:ErrorBandColor=green:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=green:LineColor=green:Title='ZNNH MG5_aMC+PY8' \
$HIST_ZNN_HDECAYED_MG5AMCNLO_HW7:ErrorBands=1:ErrorBandColor=cyan:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=blue:LineColor=blue:Title='ZNNH MG5_aMC+HW7' \


cp -r Plots/YR4_HZLL_HDECAYED_POW_vs_aMCNLO ~/www/rivet_analysis_VH_YR4/
cp -r Plots/YR4_HZLL_HSTABLE_POW_vs_aMCNLO ~/www/rivet_analysis_VH_YR4/
cp -r Plots/YR4_HZLL_vs_ggHZLL_HSTABLE_aMCNLO ~/www/rivet_analysis_VH_YR4/
cp -r Plots/YR4_HZNN_HSTABLE_POW_vs_aMCNLO ~/www/rivet_analysis_VH_YR4/
cp -r Plots/YR4_HZNN_HDECAYED_POW_vs_aMCNLO ~/www/rivet_analysis_VH_YR4/

cp -r /afs/cern.ch/user/p/perrozzi/www/dyres/index.php ~/www/rivet_analysis_VH_YR4/YR4_HZLL_HDECAYED_POW_vs_aMCNLO/MC_ZllHbb_decayed
cp -r /afs/cern.ch/user/p/perrozzi/www/dyres/index.php ~/www/rivet_analysis_VH_YR4/YR4_HZLL_HSTABLE_POW_vs_aMCNLO/MC_ZllHbb_undecayed
cp -r /afs/cern.ch/user/p/perrozzi/www/dyres/index.php ~/www/rivet_analysis_VH_YR4/YR4_HZLL_vs_ggHZLL_HSTABLE_aMCNLO/MC_ZllHbb_undecayed
cp -r /afs/cern.ch/user/p/perrozzi/www/dyres/index.php ~/www/rivet_analysis_VH_YR4/YR4_HZNN_HSTABLE_POW_vs_aMCNLO/MC_ZnunuHbb_undecayed
cp -r /afs/cern.ch/user/p/perrozzi/www/dyres/index.php ~/www/rivet_analysis_VH_YR4/YR4_HZNN_HDECAYED_POW_vs_aMCNLO/MC_ZnunuHbb_decayed

