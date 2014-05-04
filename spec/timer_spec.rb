require 'spec_helper'

describe Tomate::Timer do
  describe '#initialize' do
    it 'raises for an invalid delay' do
      expect { described_class.new('foo') }.to raise_error(ArgumentError)
    end
  end

  describe '#start' do
    context 'with fork not available' do
      before(:each) do
        allow(Process).to receive(:respond_to?).with(:fork) { false }
      end

      it 'fails' do
        expect { subject.start }.to raise_error(RuntimeError)
      end
    end

    context 'with fork available' do
      before(:each) do
        allow(subject).to receive(:fork).and_yield
      end

      it 'sends notify-send notifications' do
        expect(subject).to receive(:system).twice
        expect(subject).to receive(:sleep).with(Tomate::Timer::DEFAULT_DELAY)

        subject.start
      end
    end
  end
end
