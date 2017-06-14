#include "Rivet/Tools/Cuts.hh" 
#include "Rivet/Analysis.hh"
#include "Rivet/Projections/VetoedFinalState.hh"
#include "Rivet/Projections/FinalState.hh"
#include "Rivet/Analyses/MC_JetAnalysis.hh"
#include "Rivet/Projections/ZFinder.hh"
#include "Rivet/Projections/WFinder.hh"
#include "Rivet/Projections/MissingMomentum.hh"
#include "Rivet/Projections/FastJets.hh"
#include "Rivet/Projections/UnstableFinalState.hh"
#include "Rivet/Projections/IdentifiedFinalState.hh"

namespace Rivet {

  //////////////////////////////////////////////////
  // SELECTION CUTS
  //////////////////////////////////////////////////

  using namespace Cuts;
  Cut cut = etaIn(-5,5) & (Cuts::pT >= 0.0*GeV);
  Cut cut_pid_higgs = (Cuts::pid==PID::HIGGS);

  static const size_t NJet_bins = 4;
  
  string njetbin_labels[NJet_bins]          =   {"Incl","0","1","gt1"};
  
  double cut_najets_low_edge_bin[NJet_bins]  =   {   0,  0, 1,   1};
  double cut_najets_high_edge_bin[NJet_bins] =   {1e10,  1, 2,1e10};

  static const size_t Vpt_bins = 4;
  
  string ptbin_labels[Vpt_bins]             =   {  "Incl",  "Low",  "Med",   "High"};
  
  double cut_Zll_pt_low_edge_bin[Vpt_bins]  =   {   0*GeV,  0*GeV,150*GeV, 250*GeV};
  double cut_Zll_pt_high_edge_bin[Vpt_bins] =   {1e10*GeV,150*GeV,250*GeV,1e10*GeV};

  double cut_Znunu_pt_low_edge_bin[Vpt_bins]  = {   0*GeV,  0*GeV,150*GeV, 250*GeV};
  double cut_Znunu_pt_high_edge_bin[Vpt_bins] = {1e10*GeV,150*GeV,250*GeV,1e10*GeV};

  double cut_Wlnu_pt_low_edge_bin[Vpt_bins]  =  {   0*GeV,  0*GeV,150*GeV, 250*GeV};
  double cut_Wlnu_pt_high_edge_bin[Vpt_bins] =  {1e10*GeV,150*GeV,250*GeV,1e10*GeV};

  double cut_Zll_mass_min =  75*GeV;
  double cut_Zll_mass_max = 105*GeV;

  double cut_lepton_ptmin = 15*GeV;
  double cut_lepton_etamin = -2.5;
  double cut_lepton_etamax =  2.5;

  double cut_neutrino_ptmin = 15*GeV;
  double cut_neutrino_etamin = -100;
  double cut_neutrino_etamax =  100;

  double cut_bjets_ptmin = 25*GeV;
  double cut_bjets_etamin = -2.5;
  double cut_bjets_etamax =  2.5;

  double cut_addjets_ptmin = 20*GeV;
  double cut_addjets_etamin = -4.5;
  double cut_addjets_etamax =  4.5;

  //////////////////////////////////////////////////
  // HISTOGRAMS
  //////////////////////////////////////////////////

  int hist_nbins = 100;

  double hist_H_pt_min =   0*GeV;
  double hist_H_pt_max = 500*GeV;

  double hist_H_rap_min = -5;
  double hist_H_rap_max =  5;

  double hist_V_pt_min =   0*GeV;
  double hist_V_pt_max = 500;

  double hist_lep_pt_min =   0*GeV;
  double hist_lep_pt_max = 500*GeV;

  double hist_lep_eta_min = -5;
  double hist_lep_eta_max =  5;

  double hist_neu_pt_min =   0*GeV;
  double hist_neu_pt_max = 500*GeV;

  // # of additional jets
  size_t njets = 4;

  //////////////////////////////////////////////////
  /// Only for Inclusive pT, inclusive jet
  //////////////////////////////////////////////////

  std::vector<Histo1DPtr> _h_VptInc_AjetInc__log10_d;
  std::vector<Histo1DPtr> _h_VptInc_AjetInc__ajets_pT;
  std::vector<Histo1DPtr> _h_VptInc_AjetInc__ajets_eta;
  std::vector<Histo1DPtr> _h_VptInc_AjetInc__Sel_ajets_pT;
  std::vector<Histo1DPtr> _h_VptInc_AjetInc__Sel_ajets_eta;
  
  //////////////////////////////////////////////////
  /// All pT bins, all jet bins
  //////////////////////////////////////////////////

  std::vector<std::vector<Histo1DPtr> > _h__V_mass, _h__V_pT, _h__V_rap;
  std::vector<std::vector<Histo1DPtr> > _h__leadlep_pT, _h__leadlep_eta;
  std::vector<std::vector<Histo1DPtr> > _h__subleadlep_pT, _h__subleadlep_eta;
  std::vector<std::vector<Histo1DPtr> > _h__higgs_candidate_pT, _h__higgs_candidate_mass, _h__higgs_candidate_rap;
  std::vector<std::vector<std::vector<Histo1DPtr> > > _h__dau_eta;
  std::vector<std::vector<std::vector<Histo1DPtr> > > _h__dau_pT;
  std::vector<std::vector<Histo1DPtr> > _h__HV_pT, _h__HV_rap;
  std::vector<std::vector<Histo1DPtr> > _h__Sel_najets, _h__Sel_nbjets;
  std::vector<std::vector<Histo1DPtr> > _h__dR_jj, _h__dphi_jj, _h__deta_jj;
  std::vector<std::vector<Histo1DPtr> > _h__dR_HV, _h__dphi_HV, _h__deta_HV;
  std::vector<std::vector<Histo1DPtr> > _h__weights;
    
  //////////////////////////////////////////////////
  // VARIABLES
  //////////////////////////////////////////////////
  FourMomentum MET_4v;
  double MET;
}

