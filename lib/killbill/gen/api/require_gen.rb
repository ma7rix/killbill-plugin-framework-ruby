#############################################################################################
#                                                                                           #
#                   Copyright 2010-2013 Ning, Inc.                                          #
#                   Copyright 2014 Groupon, Inc.                                            #
#                   Copyright 2014 The Billing Project, LLC                                 #
#                                                                                           #
#      The Billing Project licenses this file to you under the Apache License, version 2.0  #
#      (the "License"); you may not use this file except in compliance with the             #
#      License.  You may obtain a copy of the License at:                                   #
#                                                                                           #
#          http://www.apache.org/licenses/LICENSE-2.0                                       #
#                                                                                           #
#      Unless required by applicable law or agreed to in writing, software                  #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT            #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the            #
#      License for the specific language governing permissions and limitations              #
#      under the License.                                                                   #
#                                                                                           #
#############################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


require 'killbill/gen/api/account'
require 'killbill/gen/api/account_api_exception'
require 'killbill/gen/api/account_data'
require 'killbill/gen/api/account_email'
require 'killbill/gen/api/account_user_api'
require 'killbill/gen/api/immutable_account_data'
require 'killbill/gen/api/mutable_account_data'
require 'killbill/gen/api/billing_exception_base'
require 'killbill/gen/api/block'
require 'killbill/gen/api/catalog'
require 'killbill/gen/api/catalog_api_exception'
require 'killbill/gen/api/catalog_user_api'
require 'killbill/gen/api/currency_value_null'
require 'killbill/gen/api/duration'
require 'killbill/gen/api/fixed'
require 'killbill/gen/api/illegal_plan_change'
require 'killbill/gen/api/international_price'
require 'killbill/gen/api/invalid_config_exception'
require 'killbill/gen/api/limit'
require 'killbill/gen/api/listing'
require 'killbill/gen/api/migration_plan'
require 'killbill/gen/api/plan'
require 'killbill/gen/api/plan_change_result'
require 'killbill/gen/api/plan_phase'
require 'killbill/gen/api/plan_phase_price_override'
require 'killbill/gen/api/plan_phase_price_overrides_with_call_context'
require 'killbill/gen/api/plan_phase_specifier'
require 'killbill/gen/api/plan_specifier'
require 'killbill/gen/api/price'
require 'killbill/gen/api/price_list'
require 'killbill/gen/api/price_list_set'
require 'killbill/gen/api/product'
require 'killbill/gen/api/recurring'
require 'killbill/gen/api/case'
require 'killbill/gen/api/case_billing_alignment'
require 'killbill/gen/api/case_cancel_policy'
require 'killbill/gen/api/case_change'
require 'killbill/gen/api/case_change_plan_alignment'
require 'killbill/gen/api/case_change_plan_policy'
require 'killbill/gen/api/case_create_alignment'
require 'killbill/gen/api/case_phase'
require 'killbill/gen/api/case_price_list'
require 'killbill/gen/api/plan_rules'
require 'killbill/gen/api/static_catalog'
require 'killbill/gen/api/tier'
require 'killbill/gen/api/tiered_block'
require 'killbill/gen/api/unit'
require 'killbill/gen/api/usage'
require 'killbill/gen/api/currency_conversion'
require 'killbill/gen/api/currency_conversion_api'
require 'killbill/gen/api/currency_conversion_exception'
require 'killbill/gen/api/rate'
require 'killbill/gen/api/blockable'
require 'killbill/gen/api/blocking_api_exception'
require 'killbill/gen/api/blocking_state'
require 'killbill/gen/api/entitlement'
require 'killbill/gen/api/entitlement_ao_status_dry_run'
require 'killbill/gen/api/entitlement_api'
require 'killbill/gen/api/entitlement_api_exception'
require 'killbill/gen/api/entitlement_specifier'
require 'killbill/gen/api/subscription'
require 'killbill/gen/api/subscription_api'
require 'killbill/gen/api/subscription_api_exception'
require 'killbill/gen/api/subscription_bundle'
require 'killbill/gen/api/subscription_bundle_timeline'
require 'killbill/gen/api/subscription_event'
require 'killbill/gen/api/dry_run_arguments'
require 'killbill/gen/api/invoice_formatter'
require 'killbill/gen/api/invoice_item_formatter'
require 'killbill/gen/api/invoice'
require 'killbill/gen/api/invoice_api_exception'
require 'killbill/gen/api/invoice_creation_event'
require 'killbill/gen/api/invoice_item'
require 'killbill/gen/api/invoice_payment'
require 'killbill/gen/api/invoice_payment_api'
require 'killbill/gen/api/invoice_user_api'
require 'killbill/gen/api/killbill_api'
require 'killbill/gen/api/plugin_config_service_api'
require 'killbill/gen/api/osgi_killbill'
require 'killbill/gen/api/osgi_plugin_properties'
require 'killbill/gen/api/plugin_info'
require 'killbill/gen/api/plugin_service_info'
require 'killbill/gen/api/plugins_info_api'
require 'killbill/gen/api/admin_payment_api'
require 'killbill/gen/api/payment'
require 'killbill/gen/api/payment_api'
require 'killbill/gen/api/payment_api_exception'
require 'killbill/gen/api/payment_gateway_api'
require 'killbill/gen/api/payment_method'
require 'killbill/gen/api/payment_method_plugin'
require 'killbill/gen/api/payment_options'
require 'killbill/gen/api/payment_transaction'
require 'killbill/gen/api/plugin_property'
require 'killbill/gen/api/refund'
require 'killbill/gen/api/security_api'
require 'killbill/gen/api/security_api_exception'
require 'killbill/gen/api/tenant'
require 'killbill/gen/api/tenant_api_exception'
require 'killbill/gen/api/tenant_data'
require 'killbill/gen/api/tenant_kv'
require 'killbill/gen/api/tenant_user_api'
require 'killbill/gen/api/rolled_up_unit'
require 'killbill/gen/api/rolled_up_usage'
require 'killbill/gen/api/subscription_usage_record'
require 'killbill/gen/api/unit_usage_record'
require 'killbill/gen/api/usage_record'
require 'killbill/gen/api/usage_user_api'
require 'killbill/gen/api/audit_user_api'
require 'killbill/gen/api/column_info'
require 'killbill/gen/api/custom_field_api_exception'
require 'killbill/gen/api/custom_field_user_api'
require 'killbill/gen/api/database_export_output_stream'
require 'killbill/gen/api/record_id_api'
require 'killbill/gen/api/tag_api_exception'
require 'killbill/gen/api/tag_definition_api_exception'
require 'killbill/gen/api/tag_user_api'
require 'killbill/gen/api/account_audit_logs'
require 'killbill/gen/api/account_audit_logs_for_object_type'
require 'killbill/gen/api/audit_log'
require 'killbill/gen/api/call_context'
require 'killbill/gen/api/tenant_context'
require 'killbill/gen/api/custom_field'
require 'killbill/gen/api/entity'
require 'killbill/gen/api/pagination'
require 'killbill/gen/api/killbill_nodes_api'
require 'killbill/gen/api/node_command'
require 'killbill/gen/api/node_command_metadata'
require 'killbill/gen/api/node_command_property'
require 'killbill/gen/api/node_info'
require 'killbill/gen/api/plugin_node_command_metadata'
require 'killbill/gen/api/control_tag'
require 'killbill/gen/api/tag'
require 'killbill/gen/api/tag_definition'
require 'killbill/gen/api/enumerator_iterator'
