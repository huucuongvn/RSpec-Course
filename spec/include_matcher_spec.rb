RSpec.describe 'include matcher' do
    describe 'hot chocolate' do
        it 'checks for substring inclusion' do
            expect(subject).to include('hot')
            expect(subject).to include('cho')
            expect(subject).to include('lat')
        end

        it {is_expected.to include('cho')}
    end

    describe [10,20,30] do
        it 'checks for inclusion in the array, regardless of order' do
            expect(subject).to include(10)
            expect(subject).to include(20,30)
        end

        it {is_expected.to include(20,10)}
    end
end