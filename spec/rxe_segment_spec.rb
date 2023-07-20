# encoding: UTF-8
$: << '../lib'
require 'ruby-hl7'
require 'byebug'

describe HL7::Message::Segment::RXE do
  context 'general' do
    before :all do
      @base_rxe = 'RXE|""""|R0009~RESERPINE 0.1MG TAB~99PSNDF~57.586.222~RESERPINE 0.1MGS.T.~99PSD|||20~MG~99PSU|1~AEROSOL~99PSF||""""||3|~|3||~~|104822|3|0||||~RESERPINE 0.1MG S.T.^~RESERPINE 0.1MG TAB||||||||||N^0^N'
    end

    it 'creates a RXE segment' do
      expect do
        rxe = HL7::Message::Segment::RXE.new( @base_rxe )
        expect(rxe).not_to be_nil
        expect(rxe.to_s).to eq @base_rxe
      end.not_to raise_error
    end

    it 'allows access to an RXE segment' do
      rxe = HL7::Message::Segment::RXE.new( @base_rxe )
      expect(rxe.give_code).to eq 'R0009~RESERPINE 0.1MG TAB~99PSNDF~57.586.222~RESERPINE 0.1MGS.T.~99PSD'
      expect(rxe.prescription_number).to eq '104822'
    end
  end
end

