require 'rails_helper'

describe Sighting do
  it { should belong_to(:animal) }
end
