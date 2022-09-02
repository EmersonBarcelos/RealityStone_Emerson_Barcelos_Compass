require 'rspec'
require 'pry'
require_relative '../src/calculadora'


describe('Calculadora') do
    calculadora = Calculadora.new
#-------------------------SOMA---------------------------------------
    it('Deve somar dois inteiros positivos') do
       expect(calculadora.somar(4, 5)).to eq 9
    end

    it('Deve somar dois números float positivos') do
        expect(calculadora.somar(4.3, 2.4)).to eq 6.7
    end

    it('Deve somar dois números negativos') do
        expect(calculadora.somar(-9, -10)).to eq -19
    end

    it('Deve somar dois números float negativos') do
        expect(calculadora.somar(-5.2, -3.1)).to eq -8.3
    end

    it('Deve somar um número float com um inteiro') do
        expect(calculadora.somar(5.2, 3)).to eq 8.2
    end

    it('Deve somar um número positivo com um negativo') do
        expect(calculadora.somar(-9, 5)).to eq -4
    end

    it('Deve somar um número qualquer com zero') do
        expect(calculadora.somar(9, 0)).to eq 9
    end

    it('Deve somar com dois zeros') do
        expect(calculadora.somar(0, 0)).to eq 0
    end

    it('Não deve somar letra com numero') do
       expect(calculadora.somar(2, 'f')).to include 'Não pode ser feita a operação com letras'
    end

#------------------------SUBTRAÇÃO----------------------------------
    it('Deve subtrair dois números positivos') do
        expect(calculadora.subtrair(15, 5)).to eq 10
    end

    it('Deve subtrair dois números negativos') do
        expect(calculadora.subtrair(-12, -6)).to eq -6
    end

    it('Deve subtrair dois números float') do
        expect(calculadora.subtrair(8.5, 2.6)).to eq 5.9
    end

    it('Deve subtrair um número inteiro com um float') do
        expect(calculadora.subtrair(6.2, 2)).to eq 4.2
    end

    it('Deve subtrair um número inteiro por 0') do
        expect(calculadora.subtrair(9, 0)).to eq 9
    end

    it('Deve subtrair um número float negativo com um inteiro') do
        expect(calculadora.subtrair(-7.2, 2)).to eq -9.2
    end

    it('Deve subtrair zero por zero') do
        expect(calculadora.subtrair(0, 0)).to eq 0
    end

    it('Não deve subtrair uma letra por um número') do
        expect(calculadora.subtrair('T', 5)).to include 'Essa operação não é possivel'
    end
#-------------------------MULTIPLICAÇÃO---------------------------------
    it('Deve multiplicar dois números inteiros positivos') do
        expect(calculadora.multiplicar(3, 8)).to eq 24
    end

    it('Deve multiplicar dois números inteiros negativos') do
        expect(calculadora.multiplicar(-4, -5)).to eq 20
    end

    it('Deve multiplicar dois números float positivos') do
        expect(calculadora.multiplicar(5.3, 2.1)).to eq 11.1
    end

    it('Deve multiplicar dois números float negativos') do
        expect(calculadora.multiplicar(-2.2, -3.3)).to eq 7.3
    end

    it('Deve multiplicar um número inteiro por um float positivo') do
        expect(calculadora.multiplicar(4, 6.2)).to eq 24.8
    end

    it('Deve multiplicar dois números inteiros negativos') do
        expect(calculadora.multiplicar(-4, -5)).to eq 20
    end

    it('Deve multiplicar um número inteiro por um float negativo') do
        expect(calculadora.multiplicar(6, -7.2)).to eq -43.2
    end

    it('Deve multiplicar zero por zero') do
        expect(calculadora.multiplicar(0, 0)).to eq 0
    end
    
    it('Não deve multiplicar um numero por uma letra') do
        expect(calculadora.multiplicar(9, 'E')).to include 'Não pode ser feita a operação com letras ou simbolos'
    end
#-------------------------DIVISÃO---------------------------------------
    it('Deve dividir dois números positivos') do
        expect(calculadora.dividir(10, 2)).to eq 5
    end

    it('Deve divivir um número float por um número inteiro') do
        expect(calculadora.dividir(20.4, 4)).to eq 5.1
    end

    it('Deve divivir dois números float') do
        expect(calculadora.dividir(2.2, 5.2)).to eq 0.4
    end

    it('Deve divivir um número inteiro por um float negativo') do
        expect(calculadora.dividir(16, -2.2)).to eq -7.3
    end

    it('Deve divivir dois números inteiros negativos') do
        expect(calculadora.dividir(-30, -3)).to eq 10
    end

    it('Deve divivir um número inteiro positivo com um float negativo') do
        expect(calculadora.dividir(24, -2.5)).to eq -9.6
    end

    it('Deve divivir dois números float negativos') do
        expect(calculadora.dividir(-40, -4.5)).to eq 8.9
    end

    it('Não deve dividir zero por zero') do
        expect(calculadora.dividir(0, 0)).to include 'Não pode dividir zero por zero'
    end

#--------------------PORCENTAGEM-------------------------------

    it('Deve obter o valor de 35% de 500') do
        expect(calculadora.porcentagem(35, 500)).to eq 175
    end

    it('Deve obter o valor de 45% de 3500') do
        expect(calculadora.porcentagem(45, 3500)).to eq 1575
    end
end
