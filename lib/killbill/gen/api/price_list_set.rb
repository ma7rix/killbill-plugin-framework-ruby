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
    module Model

      java_package 'com.ning.billing.catalog.api'
      class PriceListSet

        include com.ning.billing.catalog.api.PriceListSet

        attr_accessor :plan_list_from

        def initialize()
        end

        def to_java()
          # conversion for plan_list_from [type = com.ning.billing.catalog.api.Plan]
          @plan_list_from = @plan_list_from.to_java unless @plan_list_from.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for plan_list_from [type = com.ning.billing.catalog.api.Plan]
          @plan_list_from = j_obj.plan_list_from
          @plan_list_from = Killbill::Plugin::Model::Plan.new.to_ruby(@plan_list_from) unless @plan_list_from.nil?
          self
        end

      end
    end
  end
end