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


module Killbill
  module Plugin
    module Api

      java_package 'org.killbill.billing.tenant.api'
      class TenantUserApi

        include org.killbill.billing.tenant.api.TenantUserApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::org.killbill.billing.tenant.api.Tenant createTenant(Java::org.killbill.billing.tenant.api.TenantData, Java::org.killbill.billing.util.callcontext.CallContext)'
        def create_tenant(data, context)

          # conversion for data [type = org.killbill.billing.tenant.api.TenantData]
          data = data.to_java unless data.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.create_tenant(data, context)
            # conversion for res [type = org.killbill.billing.tenant.api.Tenant]
            res = Killbill::Plugin::Model::Tenant.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.tenant.api.TenantApiException => e
            raise Killbill::Plugin::Model::TenantApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::org.killbill.billing.tenant.api.Tenant getTenantByApiKey(Java::java.lang.String)'
        def get_tenant_by_api_key(key)

          # conversion for key [type = java.lang.String]
          key = key.to_s unless key.nil?
          begin
            res = @real_java_api.get_tenant_by_api_key(key)
            # conversion for res [type = org.killbill.billing.tenant.api.Tenant]
            res = Killbill::Plugin::Model::Tenant.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.tenant.api.TenantApiException => e
            raise Killbill::Plugin::Model::TenantApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::org.killbill.billing.tenant.api.Tenant getTenantById(Java::java.util.UUID)'
        def get_tenant_by_id(tenantId)

          # conversion for tenantId [type = java.util.UUID]
          tenantId = java.util.UUID.fromString(tenantId.to_s) unless tenantId.nil?
          begin
            res = @real_java_api.get_tenant_by_id(tenantId)
            # conversion for res [type = org.killbill.billing.tenant.api.Tenant]
            res = Killbill::Plugin::Model::Tenant.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.tenant.api.TenantApiException => e
            raise Killbill::Plugin::Model::TenantApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getTenantValuesForKey(Java::java.lang.String, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_tenant_values_for_key(key, context)

          # conversion for key [type = java.lang.String]
          key = key.to_s unless key.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_tenant_values_for_key(key, context)
            # conversion for res [type = java.util.List]
            tmp = []
            (res || []).each do |m|
              # conversion for m [type = java.lang.String]
              tmp << m
            end
            res = tmp
            return res
          rescue Java::org.killbill.billing.tenant.api.TenantApiException => e
            raise Killbill::Plugin::Model::TenantApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::void addTenantKeyValue(Java::java.lang.String, Java::java.lang.String, Java::org.killbill.billing.util.callcontext.CallContext)'
        def add_tenant_key_value(key, value, context)

          # conversion for key [type = java.lang.String]
          key = key.to_s unless key.nil?

          # conversion for value [type = java.lang.String]
          value = value.to_s unless value.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.add_tenant_key_value(key, value, context)
        end

        java_signature 'Java::void deleteTenantKey(Java::java.lang.String, Java::org.killbill.billing.util.callcontext.CallContext)'
        def delete_tenant_key(key, context)

          # conversion for key [type = java.lang.String]
          key = key.to_s unless key.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.delete_tenant_key(key, context)
        end
      end
    end
  end
end
