#!/bin/bash


# PATHS and DIRECTORIES

RUNDIR=/afs/ipp-garching.mpg.de/home/l/luisonig/GoSamPowheg/POWHEG-BOX-V2/HZJ_YR4
OUTDIR=${RUNDIR}/Plots
RIVETDIR=${RUNDIR}/RivetAnalyses_YR4

## POWHEG FILES:
# HZ(->LL)
HIST_ZLL=$RUNDIR/Run-yr4-ll-scalevar-rivet/HZLL.yoda
HIST_ZLL_1=$RUNDIR/Run-yr4-ll-scalevar-rivet-1/Yoda-PY
HIST_ZLL_2=$RUNDIR/Run-yr4-ll-scalevar-rivet-2/Yoda-PY
HIST_ZLL_3=$RUNDIR/Run-yr4-ll-scalevar-rivet-3/Yoda-PY
HIST_ZLL_4=$RUNDIR/Run-yr4-ll-scalevar-rivet-4/Yoda-PY
HIST_ZLL_5=$RUNDIR/Run-yr4-ll-scalevar-rivet-5/Yoda-PY
HIST_ZLL_6=$RUNDIR/Run-yr4-ll-scalevar-rivet-6/Yoda-PY
HIST_ZLL_7=$RUNDIR/Run-yr4-ll-scalevar-rivet-7/Yoda-PY
HIST_ZLL_HAD=$RUNDIR/Run-yr4-ll-scalevar-rivet/HZLL-HAD.yoda
HIST_ZLL_HAD_1=$RUNDIR/Run-yr4-ll-scalevar-rivet-1/Yoda-PY-HAD
HIST_ZLL_HAD_2=$RUNDIR/Run-yr4-ll-scalevar-rivet-2/Yoda-PY-HAD
HIST_ZLL_HAD_3=$RUNDIR/Run-yr4-ll-scalevar-rivet-3/Yoda-PY-HAD
HIST_ZLL_HAD_4=$RUNDIR/Run-yr4-ll-scalevar-rivet-4/Yoda-PY-HAD
HIST_ZLL_HAD_5=$RUNDIR/Run-yr4-ll-scalevar-rivet-5/Yoda-PY-HAD
HIST_ZLL_HAD_6=$RUNDIR/Run-yr4-ll-scalevar-rivet-6/Yoda-PY-HAD
HIST_ZLL_HAD_7=$RUNDIR/Run-yr4-ll-scalevar-rivet-7/Yoda-PY-HAD
# HZ(->NN)
HIST_ZNN=$RUNDIR/Run-yr4-nn-scalevar-rivet/HZNN.yoda
HIST_ZNN_1=$RUNDIR/Run-yr4-nn-scalevar-rivet-1/Yoda-PY
HIST_ZNN_2=$RUNDIR/Run-yr4-nn-scalevar-rivet-2/Yoda-PY
HIST_ZNN_3=$RUNDIR/Run-yr4-nn-scalevar-rivet-3/Yoda-PY
HIST_ZNN_4=$RUNDIR/Run-yr4-nn-scalevar-rivet-4/Yoda-PY
HIST_ZNN_5=$RUNDIR/Run-yr4-nn-scalevar-rivet-5/Yoda-PY
HIST_ZNN_6=$RUNDIR/Run-yr4-nn-scalevar-rivet-6/Yoda-PY
HIST_ZNN_7=$RUNDIR/Run-yr4-nn-scalevar-rivet-7/Yoda-PY
HIST_ZNN_HAD=$RUNDIR/Run-yr4-nn-scalevar-rivet/HZNN-HAD.yoda
HIST_ZNN_HAD_1=$RUNDIR/Run-yr4-nn-scalevar-rivet-1/Yoda-PY-HAD
HIST_ZNN_HAD_2=$RUNDIR/Run-yr4-nn-scalevar-rivet-2/Yoda-PY-HAD
HIST_ZNN_HAD_3=$RUNDIR/Run-yr4-nn-scalevar-rivet-3/Yoda-PY-HAD
HIST_ZNN_HAD_4=$RUNDIR/Run-yr4-nn-scalevar-rivet-4/Yoda-PY-HAD
HIST_ZNN_HAD_5=$RUNDIR/Run-yr4-nn-scalevar-rivet-5/Yoda-PY-HAD
HIST_ZNN_HAD_6=$RUNDIR/Run-yr4-nn-scalevar-rivet-6/Yoda-PY-HAD
HIST_ZNN_HAD_7=$RUNDIR/Run-yr4-nn-scalevar-rivet-7/Yoda-PY-HAD

##############################

yodamerge -o $HIST_ZLL_1/HZLL-1.yoda $HIST_ZLL_1/Rivet-*.yoda
yodamerge -o $HIST_ZLL_2/HZLL-2.yoda $HIST_ZLL_2/Rivet-*.yoda
yodamerge -o $HIST_ZLL_3/HZLL-3.yoda $HIST_ZLL_3/Rivet-*.yoda
yodamerge -o $HIST_ZLL_4/HZLL-4.yoda $HIST_ZLL_4/Rivet-*.yoda
yodamerge -o $HIST_ZLL_5/HZLL-5.yoda $HIST_ZLL_5/Rivet-*.yoda
yodamerge -o $HIST_ZLL_6/HZLL-6.yoda $HIST_ZLL_6/Rivet-*.yoda
yodamerge -o $HIST_ZLL_7/HZLL-7.yoda $HIST_ZLL_7/Rivet-*.yoda

yodamerge -o $HIST_ZLL_HAD_1/HZLL-1.yoda $HIST_ZLL_HAD_1/Rivet-*.yoda
yodamerge -o $HIST_ZLL_HAD_2/HZLL-2.yoda $HIST_ZLL_HAD_2/Rivet-*.yoda
yodamerge -o $HIST_ZLL_HAD_3/HZLL-3.yoda $HIST_ZLL_HAD_3/Rivet-*.yoda
yodamerge -o $HIST_ZLL_HAD_4/HZLL-4.yoda $HIST_ZLL_HAD_4/Rivet-*.yoda
yodamerge -o $HIST_ZLL_HAD_5/HZLL-5.yoda $HIST_ZLL_HAD_5/Rivet-*.yoda
yodamerge -o $HIST_ZLL_HAD_6/HZLL-6.yoda $HIST_ZLL_HAD_6/Rivet-*.yoda
yodamerge -o $HIST_ZLL_HAD_7/HZLL-7.yoda $HIST_ZLL_HAD_7/Rivet-*.yoda

yodamerge -o $HIST_ZNN_1/HZNN-1.yoda $HIST_ZNN_1/Rivet-*.yoda
yodamerge -o $HIST_ZNN_2/HZNN-2.yoda $HIST_ZNN_2/Rivet-*.yoda
yodamerge -o $HIST_ZNN_3/HZNN-3.yoda $HIST_ZNN_3/Rivet-*.yoda
yodamerge -o $HIST_ZNN_4/HZNN-4.yoda $HIST_ZNN_4/Rivet-*.yoda
yodamerge -o $HIST_ZNN_5/HZNN-5.yoda $HIST_ZNN_5/Rivet-*.yoda
yodamerge -o $HIST_ZNN_6/HZNN-6.yoda $HIST_ZNN_6/Rivet-*.yoda
yodamerge -o $HIST_ZNN_7/HZNN-7.yoda $HIST_ZNN_7/Rivet-*.yoda

yodamerge -o $HIST_ZNN_HAD_1/HZNN-1.yoda $HIST_ZNN_HAD_1/Rivet-*.yoda
yodamerge -o $HIST_ZNN_HAD_2/HZNN-2.yoda $HIST_ZNN_HAD_2/Rivet-*.yoda
yodamerge -o $HIST_ZNN_HAD_3/HZNN-3.yoda $HIST_ZNN_HAD_3/Rivet-*.yoda
yodamerge -o $HIST_ZNN_HAD_4/HZNN-4.yoda $HIST_ZNN_HAD_4/Rivet-*.yoda
yodamerge -o $HIST_ZNN_HAD_5/HZNN-5.yoda $HIST_ZNN_HAD_5/Rivet-*.yoda
yodamerge -o $HIST_ZNN_HAD_6/HZNN-6.yoda $HIST_ZNN_HAD_6/Rivet-*.yoda
yodamerge -o $HIST_ZNN_HAD_7/HZNN-7.yoda $HIST_ZNN_HAD_7/Rivet-*.yoda

yodaenvelopes -o $HIST_ZLL \
    $HIST_ZLL_1/HZLL-1.yoda \
    $HIST_ZLL_2/HZLL-2.yoda \
    $HIST_ZLL_3/HZLL-3.yoda \
    $HIST_ZLL_4/HZLL-4.yoda \
    $HIST_ZLL_5/HZLL-5.yoda \
    $HIST_ZLL_6/HZLL-6.yoda \
    $HIST_ZLL_7/HZLL-7.yoda \
 -c $HIST_ZLL_1/HZLL-1.yoda

yodaenvelopes -o $HIST_ZLL_HAD \
    $HIST_ZLL_HAD_1/HZLL-1.yoda \
    $HIST_ZLL_HAD_2/HZLL-2.yoda \
    $HIST_ZLL_HAD_3/HZLL-3.yoda \
    $HIST_ZLL_HAD_4/HZLL-4.yoda \
    $HIST_ZLL_HAD_5/HZLL-5.yoda \
    $HIST_ZLL_HAD_6/HZLL-6.yoda \
    $HIST_ZLL_HAD_7/HZLL-7.yoda \
 -c $HIST_ZLL_HAD_1/HZLL-1.yoda

yodaenvelopes -o $HIST_ZNN \
    $HIST_ZNN_1/HZNN-1.yoda \
    $HIST_ZNN_2/HZNN-2.yoda \
    $HIST_ZNN_3/HZNN-3.yoda \
    $HIST_ZNN_4/HZNN-4.yoda \
    $HIST_ZNN_5/HZNN-5.yoda \
    $HIST_ZNN_6/HZNN-6.yoda \
    $HIST_ZNN_7/HZNN-7.yoda \
 -c $HIST_ZNN_1/HZNN-1.yoda

yodaenvelopes -o $HIST_ZNN_HAD \
    $HIST_ZNN_HAD_1/HZNN-1.yoda \
    $HIST_ZNN_HAD_2/HZNN-2.yoda \
    $HIST_ZNN_HAD_3/HZNN-3.yoda \
    $HIST_ZNN_HAD_4/HZNN-4.yoda \
    $HIST_ZNN_HAD_5/HZNN-5.yoda \
    $HIST_ZNN_HAD_6/HZNN-6.yoda \
    $HIST_ZNN_HAD_7/HZNN-7.yoda \
 -c $HIST_ZNN_HAD_1/HZNN-1.yoda


# Make plots
export RIVET_ANALYSIS_PATH=$RIVETDIR

rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_check \
$HIST_ZLL:ErrorBands=1:ErrorBandColor=red:RatioPlotErrorBandColor=red:LineColor=red:Title='$HZ(\to ll)j$  comb' \
$HIST_ZLL_1/HZLL-1.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=grey:Title='$HZ(\to ll)j$  1' \
$HIST_ZLL_2/HZLL-2.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=blue:Title='$HZ(\to ll)j$  2' \
$HIST_ZLL_3/HZLL-3.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=yellow:Title='$HZ(\to ll)j$  3' \
$HIST_ZLL_4/HZLL-4.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=pink:Title='$HZ(\to ll)j$  4' \
$HIST_ZLL_5/HZLL-5.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=brown:Title='$HZ(\to ll)j$  5' \
$HIST_ZLL_6/HZLL-6.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=black:Title='$HZ(\to ll)j$  6' \
$HIST_ZLL_7/HZLL-7.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=cyan:Title='$HZ(\to ll)j$  7'

rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL \
$HIST_ZLL:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$HZ(\to ll)j$  POWHEG-BOX'

rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_HAD_check \
$HIST_ZLL_HAD:ErrorBands=1:ErrorBandColor=red:RatioPlotErrorBandColor=red:LineColor=red:Title='$H(\to b\bar{b})Z(\to ll)j$ comb' \
$HIST_ZLL_HAD_1/HZLL-1.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=grey:Title='$H(\to b\bar{b})Z(\to ll)j$  1' \
$HIST_ZLL_HAD_2/HZLL-2.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=blue:Title='$H(\to b\bar{b})Z(\to ll)j$  2' \
$HIST_ZLL_HAD_3/HZLL-3.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=yellow:Title='$H(\to b\bar{b})Z(\to ll)j$  3' \
$HIST_ZLL_HAD_4/HZLL-4.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=pink:Title='$H(\to b\bar{b})Z(\to ll)j$  4' \
$HIST_ZLL_HAD_5/HZLL-5.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=brown:Title='$H(\to b\bar{b})Z(\to ll)j$  5' \
$HIST_ZLL_HAD_6/HZLL-6.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=black:Title='$H(\to b\bar{b})Z(\to ll)j$  6' \
$HIST_ZLL_HAD_7/HZLL-7.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=cyan:Title='$H(\to b\bar{b})Z(\to ll)j$  7'

rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_HAD \
$HIST_ZLL_HAD:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$H(\to b\bar{b})Z(\to ll)j$  POWHEG-BOX'

rivet-mkhtml --cm -o $OUTDIR/YR4_HZLL_COMP \
$HIST_ZLL:ErrorBands=1:ErrorBandColor=blue:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=blue:LineColor=blue:Title='$HZ(\to ll)j$  POWHEG-BOX' \
$HIST_ZLL_HAD:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$H(\to b\bar{b})Z(\to ll)j$  POWHEG-BOX'

# Z->NN

rivet-mkhtml --cm -o $OUTDIR/YR4_HZNN_check \
$HIST_ZNN:ErrorBands=1:ErrorBandColor=red:RatioPlotErrorBandColor=red:LineColor=red:Title='$HZ(\to \nu\nu)j$  comb' \
$HIST_ZNN_1/HZNN-1.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=grey:Title='$HZ(\to \nu\nu)j$  1' \
$HIST_ZNN_2/HZNN-2.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=blue:Title='$HZ(\to \nu\nu)j$  2' \
$HIST_ZNN_3/HZNN-3.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=yellow:Title='$HZ(\to \nu\nu)j$  3' \
$HIST_ZNN_4/HZNN-4.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=pink:Title='$HZ(\to \nu\nu)j$  4' \
$HIST_ZNN_5/HZNN-5.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=brown:Title='$HZ(\to \nu\nu)j$  5' \
$HIST_ZNN_6/HZNN-6.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=black:Title='$HZ(\to \nu\nu)j$  6' \
$HIST_ZNN_7/HZNN-7.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=cyan:Title='$HZ(\to \nu\nu)j$  7'

rivet-mkhtml --cm -o $OUTDIR/YR4_HZNN \
$HIST_ZNN:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$HZ(\to \nu\nu)j$  POWHEG-BOX'

rivet-mkhtml --cm -o $OUTDIR/YR4_HZNN_HAD_check \
$HIST_ZNN_HAD:ErrorBands=1:ErrorBandColor=red:RatioPlotErrorBandColor=red:LineColor=red:Title='$H(\to b\bar{b})Z(\to \nu\nu)j$ comb' \
$HIST_ZNN_HAD_1/HZNN-1.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=grey:Title='$H(\to b\bar{b})Z(\to \nu\nu)j$  1' \
$HIST_ZNN_HAD_2/HZNN-2.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=blue:Title='$H(\to b\bar{b})Z(\to \nu\nu)j$  2' \
$HIST_ZNN_HAD_3/HZNN-3.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=yellow:Title='$H(\to b\bar{b})Z(\to \nu\nu)j$  3' \
$HIST_ZNN_HAD_4/HZNN-4.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=pink:Title='$H(\to b\bar{b})Z(\to \nu\nu)j$  4' \
$HIST_ZNN_HAD_5/HZNN-5.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=brown:Title='$H(\to b\bar{b})Z(\to \nu\nu)j$  5' \
$HIST_ZNN_HAD_6/HZNN-6.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=black:Title='$H(\to b\bar{b})Z(\to \nu\nu)j$  6' \
$HIST_ZNN_HAD_7/HZNN-7.yoda:ErrorBands=0:ErrorBandColor=yellow:RatioPlotErrorBandColor=yellow:LineColor=cyan:Title='$H(\to b\bar{b})Z(\to \nu\nu)j$  7'

rivet-mkhtml --cm -o $OUTDIR/YR4_HZNN_HAD \
$HIST_ZNN_HAD:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$H(\to b\bar{b})Z(\to \nu\nu)j$  POWHEG-BOX'

rivet-mkhtml --cm -o $OUTDIR/YR4_HZNN_COMP \
$HIST_ZNN:ErrorBands=1:ErrorBandColor=blue:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=blue:LineColor=blue:Title='$HZ(\to \nu\nu)j$  POWHEG-BOX' \
$HIST_ZNN_HAD:ErrorBands=1:ErrorBandColor=orange:ErrorBandOpacity=0.5:RatioPlotErrorBandColor=orange:LineColor=red:Title='$H(\to b\bar{b})Z(\to \nu\nu)j$  POWHEG-BOX'
