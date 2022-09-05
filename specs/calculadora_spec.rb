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

    it('Não deve aceitar letra no segundo campo') do
       expect(calculadora.somar(2, 'f')).to include 'Não pode ser feita a operação com letras'
    end

    it('Não deve aceitar letra no primeiro campo') do
        expect(calculadora.somar('f', 4)).to include 'Não pode ser feita a operação com letras'
    end

    it('Não deve aceitar simbolos no segundo campo') do
        expect(calculadora.somar(10, "&")).to include "Não pode ser feita a operação com letras ou simbolos"
    end

    it('Não deve aceitar simbolos no primeiro campo') do
        expect(calculadora.somar("&", 24)).to include "Não pode ser feita a operação com letras ou simbolos"
    end

    it('Não deve aceitar palavras no primeiro campo') do
        expect(calculadora.somar("Sal", 56)).to include 'Não pode ser feita a operação com letras'
    end

    it('Não deve aceitar palavras no segundo campo') do
        expect(calculadora.somar(23, "Sal")).to include 'Não pode ser feita a operação com letras'
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

    it('Não deve aceitar uma letra no primeiro campo') do
        expect(calculadora.subtrair('T', 5)).to include "Essa operação não é possivel"
    end

    it('Não deve aceitar uma letra no segundo campo') do
        expect(calculadora.subtrair(3, 'Y')).to include "Não pode ser feita a operação com letras ou simbolos"
    end

    it('Não deve aceitar simbolos no primeiro campo') do
        expect(calculadora.subtrair('(', 10)).to include "Essa operação não é possivel"
    end

    it('Não deve aceitar simbolos no segundo campo') do
        expect(calculadora.subtrair(22, ')')).to include "Não pode ser feita a operação com letras ou simbolos"
    end

    it('Não deve aceitar palavras no segundo campo') do
        expect(calculadora.subtrair(56, "manga")).to include 'Não pode ser feita a operação com letras ou simbolos'
    end

    it('Não deve aceitar palavras no primeiro campo') do
        expect(calculadora.subtrair("manga", 57)).to include "Essa operação não é possivel"
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
        expect(calculadora.multiplicar(9, 'E')).to include 'Não pode ser feita a operação com letras'
    end

    it('Não deve aceitar palavras nos campos') do
        expect(calculadora.multiplicar(89, "casa")).to include 'Não pode ser feita a operação com letras'
    end
    
    it('Não deve aceitar simbolo nos campos') do
        expect(calculadora.multiplicar(89, "@")).to include 'Não pode ser feita a operação com letras'
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

    it('Não deve aceitar simbolos no primeiro campo') do
        expect(calculadora.dividir('$', 10)).to include "Essa operação não é possivel"
    end

    it('Não deve aceitar simbolos no segundo campo') do
        expect(calculadora.dividir(3, '$')).to include "Não pode ser feita a operação com letras ou simbolos"
    end

    it('Não deve aceitar palavra no segundo campo') do
        expect(calculadora.dividir(56, "Xurupita")).to include 'Não pode ser feita a operação com letras'
    end

    it('Não deve aceitar palavra no primeiro campo') do
        expect(calculadora.dividir("Xurupita", 34)).to include "Essa operação não é possivel"
    end

    it('Não deve aceitar letra no primeiro campo') do
        expect(calculadora.dividir("S", 39)).to include "Essa operação não é possivel"
    end

    it('Não deve aceitar letra no segundo campo') do
        expect(calculadora.dividir(23, "S")).to include 'Não pode ser feita a operação com letras'
    end

#--------------------PORCENTAGEM-------------------------------

    it('Deve obter o valor de uma porcentagem sobre um numero inteiro positivo') do
        expect(calculadora.porcentagem(35, 500)).to eq 175
    end

    it('Deve obter o valor de uma porcentagem sobre um numero inteiro negativo') do
        expect(calculadora.porcentagem(45, -3500)).to eq -1575
    end

    it('Deve obter o valor de uma porcentagem sobre um numero float positivo') do
        expect(calculadora.porcentagem(30, 47.5)).to eq 14.3
    end

    it('Deve obter o valor de uma porcentagem sobre um numero float negativo') do
        expect(calculadora.porcentagem(15, -55.2)).to eq -8.3
    end

    it('Não deve aceitar porcetagem maior que 100') do
        expect(calculadora.porcentagem(102, 789)).to include 'A porcentagem não pode ser maior que 100'
    end

    it('Não deve aceitar letra no segundo campo') do
        expect(calculadora.porcentagem(80, "E")).to include 'Não pode ser feita a operação com letras ou simbolos'
    end

    it('Não deve aceitar letras no primeiro campo') do
        expect(calculadora.porcentagem("E", 2)).to include 'Deve ser feita operação com números'
    end

    it('Não deve aceitar simbolos nos campos') do
        expect(calculadora.porcentagem('@', 5000)).to include 'Deve ser feita operação com números'
    end

    it('Não deve aceitar simbolos nos campos') do
        expect(calculadora.porcentagem(50, '@')).to include 'Não pode ser feita a operação com letras ou simbolos'
    end

    it('Não deve aceitar palavras nos campos') do
        expect(calculadora.porcentagem(47, "Emerson")).to include 'Não pode ser feita a operação com letras ou simbolos'
    end

    it('Não deve aceitar palavras nos campos') do
        expect(calculadora.porcentagem("Emerson", 1000)).to include "Deve ser feita operação com números"
    end

    it('Não deve aceitar palavras nos campos') do
        expect(calculadora.porcentagem("Emerson", 1000)).to include "Deve ser feita operação com números"
    end
end
