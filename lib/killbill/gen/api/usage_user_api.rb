###################################################################################
#                                                                                 #
#                   Copyright 2010-2013 Ning, Inc.                                #
#                                                                                 #
#      Ning licenses this file to you under the Apache License, version 2.0       #
#      (the "License"); you may not use this file except in compliance with the   #
#      License.  You may obtain a copy of the License at:                         #
#                                                                                 #
#          http://www.apache.org/licenses/LICENSE-2.0                             #
#                                                                                 #
#      Unless required by applicable law or agreed to in writing, software        #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT  #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the  #
#      License for the specific language governing permissions and limitations    #
#      under the License.                                                         #
#                                                                                 #
###################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Api

      java_package 'com.ning.billing.usage.api'
      class UsageUserApi

        include com.ning.billing.usage.api.UsageUserApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::void recordRolledUpUsage(Java::java.util.UUID, Java::java.lang.String, Java::org.joda.time.DateTime, Java::org.joda.time.DateTime, Java::java.math.BigDecimal, Java::com.ning.billing.util.callcontext.CallContext)'
        def record_rolled_up_usage(subscriptionId, unitType, startTime, endTime, amount, context)

          # conversion for subscriptionId [type = java.util.UUID]
          subscriptionId = java.util.UUID.fromString(subscriptionId.to_s) unless subscriptionId.nil?

          # conversion for unitType [type = java.lang.String]
          unitType = unitType.to_s unless unitType.nil?

          # conversion for startTime [type = org.joda.time.DateTime]
          if !startTime.nil?
            startTime =  (startTime.kind_of? Time) ? DateTime.parse(startTime.to_s) : startTime
            startTime = Java::org.joda.time.DateTime.new(startTime.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for endTime [type = org.joda.time.DateTime]
          if !endTime.nil?
            endTime =  (endTime.kind_of? Time) ? DateTime.parse(endTime.to_s) : endTime
            endTime = Java::org.joda.time.DateTime.new(endTime.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for amount [type = java.math.BigDecimal]
          if amount.nil?
            amount = java.math.BigDecimal::ZERO
          else
            amount = java.math.BigDecimal.new(amount.to_s)
          end

          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.record_rolled_up_usage(subscriptionId, unitType, startTime, endTime, amount, context)
        end

        java_signature 'Java::com.ning.billing.usage.api.RolledUpUsage getUsageForSubscription(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_usage_for_subscription(subscriptionId, context)

          # conversion for subscriptionId [type = java.util.UUID]
          subscriptionId = java.util.UUID.fromString(subscriptionId.to_s) unless subscriptionId.nil?

          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_usage_for_subscription(subscriptionId, context)
          # conversion for res [type = com.ning.billing.usage.api.RolledUpUsage]
          res = Killbill::Plugin::Model::RolledUpUsage.new.to_ruby(res) unless res.nil?
          return res
        end
      end
    end
  end
end
