RSpec.describe 'a random double' do
    # it 'only allows defined methods to be invoked' do
    #     stuman = double("Mr. Danger", fall_off_ladder: 'Ouch', light_on_fire: true)

    #     expect(stuman.fall_off_ladder).to eq('Ouch')
    #     expect(stuman.light_on_fire).to eq(true)

    # end

    it 'only allows defined methods to be invoked' do
        stuman = double("Mr. Danger")
        allow(stuman).to receive(:fall_off_ladder).and_return('Ouch')
        expect(stuman.fall_off_ladder).to eq('Ouch')
        

    end

end