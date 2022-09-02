
class Calculadora

    def somar(numero1, numero2)
       begin
            resultado = numero1 + numero2
        rescue TypeError
            return "Não pode ser feita a operação com letras ou simbolos"
        rescue NoMethodError
            return "Essa operação não é possivel"
        else
            resultado.round(1)
       end
    end

    def subtrair(numero1, numero2)
        begin
            resultado = numero1 - numero2
        rescue TypeError
            return "Não pode ser feita a operação com letras"
        rescue NoMethodError
            return "Essa operação não é possivel"
        else
            resultado.round(1)
       end
    end

    def multiplicar(numero1, numero2)
        begin
            resultado = numero1 * numero2
        rescue TypeError
            return "Não pode ser feita a operação com letras ou simbolos"
        rescue NoMethodError
            return "Essa operação não é possivel"
        else
            resultado.round(1)
       end
    end

    def dividir(numero1, numero2)
        begin
            resultado = numero1 / numero2
        rescue TypeError
            return "Não pode ser feita a operação com letras ou simbolos"
        rescue NoMethodError
            return "Essa operação não é possivel"
        rescue ZeroDivisionError
            return "Não pode dividir zero por zero"
        else
            resultado.round(1)
       end
    end

    def porcentagem(porcentagem, numero)
        porcentagem * numero / 100
    end
end
