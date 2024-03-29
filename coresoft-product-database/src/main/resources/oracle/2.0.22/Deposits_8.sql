--ALTER TABLE deposit_account ADD CD_PRE_DIST_CHECK_AMOUNT NUMBER(20,5) DEFAULT '0';
--ALTER TABLE deposit_account ADD CD_PRE_DIST_PENALTY_AMOUNT NUMBER(20,5) DEFAULT '0';
--ALTER TABLE ACCOUNT_HISTORY_ITEM ADD REVERSAL_REASON VARCHAR2(100 BYTE);

--ALTER TABLE TRANSACTION_POSTTODAY ADD Reversal_Reason VARCHAR2(100 BYTE);

alter table REGD_ACTIVITY_DETAILS add NO_VIOLATIONS_YTD NUMBER DEFAULT 0;

CREATE OR REPLACE VIEW DEPOSIT_ACCOUNT_VW AS SELECT da.customer_id,
  da.account_id,
  da.number_days_penalty,
  da.penalty_end_date,
  da.payoff,
  da.state_withhold_amt_curr_period,
  da.date_orig_issue,
  da.renewal_balance,
  da.date_30day_notice_expire,
  da.collected_balance,
  da.effective_rate,
  da.annual_percentage_yield,
  da.aggr_uncoll_bal_curr_period,
  da.memo_posted_credits,
  da.memo_posted_debits,
  da.hold_amount,
  da.times_dau_ytd,
  da.next_stmt_date,
  da.high_balance,
  da.proceeds_fraba,
  da.qtd_interest,
  da.pre_check_amount,
  da.party_id,
  da.currency,
  da.waiver_activity_sc,
  da.savings_balance,
  da.opening_deposit,
  da.opening_deposit_type,
  da.base_index,
  da.min_no_of_auth_signers,
  da.duplicate_cd_form_status,
  da.duplicate_cd_issued,
  da.mode_of_operation,
  da.interest_earned_life_temp,
  da.last_service_charge,
  da.no_of_atm_used_ytd,
  da.ownership_designation,
  da.state_tax_wheld_ytd,
  da.stmt_opening_bal,
  da.stmt_opening_date,
  da.old_kite_balance,
  da.last_activity_date,
  da.multiple_signatures,
  da.next_interest_payment,
  da.smsa,
  da.cra_location,
  da.census_track,
  da.maturity_disb_code,
  da.interest_paid_ytd,
  da.original_balance,
  da.penalty_paid_ltd,
  da.penalty_paid_pytd,
  da.proceeds_bank,
  da.minimum_balance,
  da.passbook_stmt_flag,
  da.opening_branch,
  da.srv_chrg_ex_act_curr_period,
  da.number_periods_year_to_date,
  da.transfer_account,
  da.service_charge_dda_account_no,
  da.service_charge_dda_amount,
  da.taxable_interest_code,
  da.srv_chrg_inact_curr_period,
  da.srv_chrg_inact_curr_period_wd,
  da.srv_chrg_account_closing,
  da.number_unposted_passbook_items,
  da.amount_unposted_passbook_items,
  da.amt_unposted_passbook_interest,
  da.golden_savings_deferr_interest,
  da.golden_savings_rcd_date,
  da.golden_savings_mvbr,
  da.golden_savings_violation_flag,
  da.forfeiture_amount,
  da.interest_paid_life_at_last_rnl,
  da.date_expiry,
  da.original_amount,
  da.compound_flag,
  da.level_interest_payment_code,
  da.number_payments_to_date,
  da.payments_remaining,
  da.held_in_safekeeping,
  da.bank_day_1,
  da.bank_day_2,
  da.bank_day_3,
  da.bank_day_4,
  da.bank_day_5,
  da.bank_day_6,
  da.bank_day_7,
  da.customer_day_1,
  da.customer_day_2,
  da.customer_day_3,
  da.customer_day_4,
  da.customer_day_5,
  da.customer_day_6,
  da.customer_day_7,
  da.branch_id,
  da.class_code,
  da.user_code_1,
  da.user_code_2,
  da.user_code_3,
  da.user_code_4,
  da.user_code_5,
  da.user_code_6,
  da.user_code_7,
  da.user_code_8,
  da.user_code_9,
  da.date_opened,
  da.allowed_od_amount,
  da.dealer_number,
  da.service_charge_activity_code,
  da.ssn_tax_payer_id,
  da.priority_code,
  da.atf_fee_waiver,
  da.now_class_code,
  da.alert_indicator,
  da.alternate_mailing_address_code,
  da.cycle_code_lock_flag,
  da.estatement_code,
  da.interest_proceeds_code,
  da.irs_reporting_code,
  da.previous_officer_code,
  da.old_account_number,
  da.overdraft_limit_code,
  da.previous_class_code,
  da.previous_cycle_code,
  da.product_code,
  da.product_source,
  da.service_charge_bill_code,
  da.service_chrg_savings_acc_no,
  da.service_charge_savings_code,
  da.statement_cycle_code,
  da.statement_format_code,
  da.statement_message_code,
  da.statement_relationship_code,
  da.statement_summary_code,
  da.status_flag,
  da.stop_code,
  da.waive_inactive_serv_chrg_flag,
  da.waive_closed_acc_srv_chrg_flag,
  da.system_date,
  da.posting_date,
  da.user_id,
  da.charged_off,
  da.stop_pays,
  da.pay_on_uncollected,
  da.ach_next_day_post_amt,
  da.special_instructions,
  da.interest_code,
  da.check_protection,
  da.status,
  da.trust_fund_indicator,
  da.how_statement_pulled,
  da.service_charges,
  da.check_safekeeping,
  da.stop_hold_code,
  da.service_charge_code,
  da.card_holder_name,
  da.card_status,
  da.times_atm_used_ytd,
  da.relaionship_statement,
  da.card_holder_number,
  da.on_call_saving,
  da.current_amount_float,
  da.employee,
  da.wire_teller_check,
  da.overnight_repurchase,
  da.ach_extracted_post_amt,
  da.closing_charge,
  da.corr_bank_indic,
  da.CD_PRE_DIST_CHECK_AMOUNT,
  da.cd_pre_dist_penalty_amount,
  d.prev_kiting_date,
  d.no_times_excess_regd_rpt,
  d.prev_no_deposits_curr_period,
  d.prev_no_atm_debits,
  d.prev_srv_chrg_act_curr_period,
  d.prev_srv_chrg_maintcurr_period,
  d.prev_times_od_curr_period,
  d.prev_times_nsf_curr_period,
  d.prev_no_days_od_curr_period,
  d.prev_interest_paid_ptd,
  d.prev_aggr_balance_curr_period,
  d.prev_no_enclosure_curr_period,
  d.prev_times_kiting_curr_period,
  d.prev_no_of_posting_days,
  d.returned_item_fee_ptd,
  d.od_fee_ptd,
  d.prev_returned_item_fee_ptd,
  d.prev_od_fee_ptd,
  d.proceeds_code,
  d.fed_withholding_code,
  d.state_withholding_code,
  d.times_od_ytd,
  d.times_od_curr_period,
  d.srv_chrg_act_curr_period,
  d.face_amount,
  d.maturity_auto_renew,
  d.bal_subject_to_penalty,
  d.renewal_interest_rate,
  d.equal_int_payment_ind,
  d.int_report_not_paid,
  d.interest_frequency,
  d.one_up,
  d.times_kiting_ytd,
  d.penalty_id,
  d.interest_day_of_month,
  d.rate_change_frequency,
  d.prior_year_interest_forfeited,
  d.pyr_int_reported_not_paid,
  d.times_kiting_pryr,
  da.plan_id,
  d.no_of_checks,
  d.no_transit_items,
  d.waiver_direct_sc,
  d.tot_act_chg_wav,
  d.no_of_posting_days,
  d.no_checks_paid_float,
  d.no_ach_credits,
  d.no_atm_debits,
  d.no_atm_credits,
  d.call_report_code,
  d.club_payment_code,
  d.interest_calculation,
  d.initial_interest_rate,
  d.club_payment_amount,
  d.dau_charge,
  d.od_charge,
  d.nsf_charge,
  d.is_payroll_account,
  d.certificate_number,
  d.date_last_activity,
  d.tax_code,
  d.agg_balance_ytd,
  d.date_last_external_debit_acty,
  d.state_tax_wheld_ptd,
  d.fed_withhold_amt_curr_period,
  d.fed_withhold_amt_year_to_date,
  d.date_first_overdrawn,
  d.proceeds_account_id,
  d.date_previous_activity,
  d.is_public_fund,
  d.date_last_kiting,
  d.old_kite_debits,
  d.old_kite_credits,
  d.old_interest_rate,
  d.opening_balance,
  d.no_times_excess_mma_rpt,
  d.previous_balance,
  d.previous_stmt_date,
  d.returns_last_yr,
  d.paid_out_date,
  d.prev_amt_credits_curr_period,
  d.prev_amt_debits_curr_period,
  d.prev_no_debits_current_period,
  d.prev_no_credits_current_period,
  d.prev_no_ach_debits_curr_period,
  d.prev_no_transit_items,
  d.prev_no_of_checks,
  d.prev_fed_withold_amt_curr_ptd,
  d.maturity_date,
  d.club_amount,
  d.club_number_payments,
  d.proceeds_account_number,
  d.collateral_pledge_code,
  d.term,
  d.accum_interest_not_paid,
  d.daily_accural_factor,
  d.penalty_amount,
  d.date_last_interest,
  d.amount_of_last_interest,
  d.date_last_renewed,
  d.new_closed_days_counter,
  d.cd_type,
  d.mis_data_code,
  d.amt_of_credits_current_period,
  d.no_credits_current_period,
  d.amt_of_debits_current_period,
  d.no_debits_current_period,
  d.no_enclosure_current_period,
  d.no_deposits_current_period,
  d.srv_chrg_maintcurr_period,
  d.date_overdrawn,
  d.amt_original_overdraft,
  d.agg_overdraft_bal_curr_period,
  d.no_days_overdrawn_curr_period,
  d.no_days_overdrawn_yr_to_date,
  d.times_nsf_ytd,
  d.no_chrg_back_items_yr_to_date,
  d.times_od_pryr,
  d.no_days_overdrawn_prior_year,
  d.no_ach_debits_current_period,
  d.no_paper_credits_curr_period,
  d.no_local_items_dep_curr_period,
  d.times_kiting_curr_period,
  d.interest_paid_ptd,
  d.date_atm_last_used,
  d.avg_uncollect_bal_curr_period,
  d.interest_earned_life,
  d.renewed_amount,
  d.cd_pre_check_amount,
  d.negotiable_code,
  d.number_of_times_renewed,
  d.interest_change_rate,
  d.days_per_year,
  d.rate_change_code,
  d.premium_cd_rate,
  d.date_account_reopen,
  d.ytd_average_balance,
  d.interest_forfieted,
  d.date_next_interest,
  d.times_nsf_curr_period,
  d.status_code,
  d.overdraft_code,
  d.conf_stmt_flag,
  d.new_account_flag,
  d.profit_center,
  d.ach_posting_code,
  d.ach_notice_code,
  d.hold_code,
  d.secured_deposit_indicator,
  d.accrual_key,
  d.uncollected_balance,
  d.available_balance,
  d.accrued_interest,
  d.ytd_interest,
  d.aggr_balance_current_period,
  d.prior_year_interest,
  d.overdraft_limit,
  d.amount_deposit_last,
  d.low_balance_current_period,
  d.last_withdrawn_amount,
  d.last_customer_activity,
  d.date_last_maintained,
  d.date_last_deposit,
  d.date_last_withdrawal,
  d.date_closed,
  d.interest_rate,
  da.assigned_branch,
  d.assigned_officer,
  d.current_statement_cycle,
  d.times_atm_used_total,
  d.no_of_atm_cash_withdrawl,
  d.last_stmt_date,
  d.bal_fwd_last_stmt,
  d.current_balance,
  d.avg_balance_current_period,
  d.avg_balance_prev_period,
  d.ledger_balance,
  d.anticipated_interest,
  d.projected_accrued_interest,
  d.account_no,
  d.creation_date,
  d.business_date,
  d.last_processed_date,
  a.account_category,
  a.institution_id,
  a.product_id,
  d.account_type_id,
  a.product_instance_uid,
  da.schedule_id,
  d.NO_OF_DAYS_OD_YTD,
  d.CONSECUTIVE_DAYS_OD
FROM deposit_account da,
  account a,
  deposit d
WHERE a.account_id = d.account_id
 AND a.account_id = da.account_id;
 
 ALTER TABLE DEPOSIT modify RATE_CHANGE_COUNT DEFAULT 0;
update deposit set rate_change_count=0;

ALTER TABLE LEDGER_POSTING_PARAMETERS modify PARTIAL_WITH_DRAWL_COUNT DEFAULT 0;
update LEDGER_POSTING_PARAMETERS set PARTIAL_WITH_DRAWL_COUNT=0;

ALTER TABLE LEDGER_POSTING_PARAMETERS modify ADDITIONAL_DEPOSIT_COUNT DEFAULT 0;
update LEDGER_POSTING_PARAMETERS set ADDITIONAL_DEPOSIT_COUNT=0;

ALTER TABLE AUTOMATIC_TRANSFER_INSTRUCTION modify week_end_processing DEFAULT 'Build_Sat_Sun_on_Monday';

update AUTOMATIC_TRANSFER_INSTRUCTION set week_end_processing='Build_Sat_Sun_on_Monday';

ALTER TABLE deposit modify REGD_COMPUTING_PERIOD DEFAULT 0;
update deposit set REGD_COMPUTING_PERIOD=0;

ALTER TABLE deposit modify MAX_ALLOWED_TRANSFERS_COUNT DEFAULT 1;
update deposit set MAX_ALLOWED_TRANSFERS_COUNT=1;

ALTER TABLE deposit modify REGD_ALLOWED DEFAULT 1;
update deposit set REGD_ALLOWED=1;

--CIP information needs in ActivityLog
ALTER TABLE ACTIVITY_LOG MODIFY ACTIVITY_PERFORMED varchar2(1000);
ALTER TABLE ACH_WARE_HOUSE_ENTRY ADD NIGHTLY_PROC_DATE DATE;

alter table  DEPOSITS_LOANS MODIFY party_name varchar2(500);