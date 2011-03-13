# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.domreg.lt/property_nameservers_with_ip_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.domreg.lt.rb'

describe Whois::Answer::Parser::WhoisDomregLt, "property_nameservers_with_ip.expected" do

  before(:each) do
    file = fixture("responses", "whois.domreg.lt/property_nameservers_with_ip.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
    end
    it do
      @parser.nameservers.should have(4).items
    end
    it do
      @parser.nameservers[0].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[0].name.should == "ns1.serveriai.lt"
    end
    it do
      @parser.nameservers[0].ipv4.should == "79.98.25.142"
    end
    it do
      @parser.nameservers[1].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[1].name.should == "ns2.serveriai.lt"
    end
    it do
      @parser.nameservers[1].ipv4.should == "174.36.250.192"
    end
    it do
      @parser.nameservers[2].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[2].name.should == "ns3.serveriai.lt"
    end
    it do
      @parser.nameservers[2].ipv4.should == "79.98.29.142"
    end
    it do
      @parser.nameservers[3].should be_a(_nameserver)
    end
    it do
      @parser.nameservers[3].name.should == "ns4.serveriai.lt"
    end
    it do
      @parser.nameservers[3].ipv4.should == "67.228.39.192"
    end
  end
end
