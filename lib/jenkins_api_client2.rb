#
# Copyright (c) 2012 Kannan Manickam <arangamani.kannan@gmail.com>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#

require 'jenkins_api_client2/version'
require 'jenkins_api_client2/exceptions'
require 'jenkins_api_client2/client'
require 'jenkins_api_client2/job'
require 'jenkins_api_client2/node'
require 'jenkins_api_client2/system'
require 'jenkins_api_client2/view'
require 'jenkins_api_client2/build_queue'
require 'jenkins_api_client2/plugin_manager'
require 'jenkins_api_client2/user'
require 'jenkins_api_client2/root'

require 'jenkins_api_client2/cli/helper'
require 'jenkins_api_client2/cli/base'
require 'jenkins_api_client2/cli/job'
require 'jenkins_api_client2/cli/node'
require 'jenkins_api_client2/cli/system'

module JenkinsApi
  class Client
    module PluginSettings
      class InvalidType < Exception; end

      autoload :Base, 'jenkins_api_client2/plugin_settings/base'
      autoload :Hipchat, 'jenkins_api_client2/plugin_settings/hipchat'
      autoload :WorkspaceCleanup, 'jenkins_api_client2/plugin_settings/workspace_cleanup'
      autoload :Collection, 'jenkins_api_client2/plugin_settings/collection'
    end
  end
end
