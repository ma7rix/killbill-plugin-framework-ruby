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
    module Model

      java_package 'org.killbill.billing.entitlement.plugin.api'
      class PriorEntitlementResult

        include org.killbill.billing.entitlement.plugin.api.PriorEntitlementResult

        attr_accessor :is_aborted, :adjusted_effective_date, :adjusted_entitlement_specifiers, :adjusted_plugin_properties

        def initialize()
        end

        def to_java()
          # conversion for is_aborted [type = boolean]
          @is_aborted = @is_aborted.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_aborted)

          # conversion for adjusted_effective_date [type = org.joda.time.LocalDate]
          if !@adjusted_effective_date.nil?
            @adjusted_effective_date = Java::org.joda.time.LocalDate.parse(@adjusted_effective_date.to_s)
          end

          # conversion for adjusted_entitlement_specifiers [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@adjusted_entitlement_specifiers || []).each do |m|
            # conversion for m [type = org.killbill.billing.entitlement.api.EntitlementSpecifier]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @adjusted_entitlement_specifiers = tmp

          # conversion for adjusted_plugin_properties [type = java.lang.Iterable]
          tmp = java.util.ArrayList.new
          (@adjusted_plugin_properties || []).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @adjusted_plugin_properties = tmp
          self
        end

        def to_ruby(j_obj)
          # conversion for is_aborted [type = boolean]
          @is_aborted = j_obj.is_aborted
          if @is_aborted.nil?
            @is_aborted = false
          else
            tmp_bool = (@is_aborted.java_kind_of? java.lang.Boolean) ? @is_aborted.boolean_value : @is_aborted
            @is_aborted = tmp_bool ? true : false
          end

          # conversion for adjusted_effective_date [type = org.joda.time.LocalDate]
          @adjusted_effective_date = j_obj.adjusted_effective_date
          if !@adjusted_effective_date.nil?
            @adjusted_effective_date = @adjusted_effective_date.to_s
          end

          # conversion for adjusted_entitlement_specifiers [type = java.util.List]
          @adjusted_entitlement_specifiers = j_obj.adjusted_entitlement_specifiers
          tmp = []
          (@adjusted_entitlement_specifiers || []).each do |m|
            # conversion for m [type = org.killbill.billing.entitlement.api.EntitlementSpecifier]
            m = Killbill::Plugin::Model::EntitlementSpecifier.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @adjusted_entitlement_specifiers = tmp

          # conversion for adjusted_plugin_properties [type = java.lang.Iterable]
          @adjusted_plugin_properties = j_obj.adjusted_plugin_properties
          tmp = []
          (@adjusted_plugin_properties.nil? ? [] : @adjusted_plugin_properties.iterator).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = Killbill::Plugin::Model::PluginProperty.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @adjusted_plugin_properties = tmp
          self
        end

      end
    end
  end
end
