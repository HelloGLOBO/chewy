require 'spec_helper'

describe Chewy::Runtime do
	let(:minimum_version) { BackendLibrary.minimum_version }
  let(:maximum_version) { BackendLibrary.maximum_version }

  describe '.version' do
    specify { expect(described_class.version).to be_a(described_class::Version) }
    specify { expect(described_class.version.try(:to_s)).to be >= minimum_version }
    specify { expect(described_class.version.try(:to_s)).to be < maximum_version }
  end
end
