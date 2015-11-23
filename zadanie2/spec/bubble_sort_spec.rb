require 'simplecov'
SimpleCov.start

require 'bubble_sort'

describe '#bubble_sort' do
  it 'Nie powinno pookazac bledu' do
    expect { bubble_sort([1, 5, 8]) }.not_to raise_error
  end
  
  it 'Sprawdzanie funkcjonalnosci' do
    expect(bubble_sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
    expect(bubble_sort([1, 5, 3, 77, 4])).to eq([1, 3, 4, 5, 77])
    expect(bubble_sort([-1, 5, 3, 77, 4])).to eq([-1, 3, 4, 5, 77])
  end
  
  it "Powinno zwrocic pusta tablice" do
      expect(bubble_sort([])).to eq([])
    end
  
  it "Powinno pokazac 1 element" do
      expect(bubble_sort([1])).to eq([1])
    end  
  
   it "Nie powinno zmieniac posortowanej tablicy" do
      expect(bubble_sort([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    end  
    
end
