class ContadorPalabras
    attr_accessor :texto
  
    def initialize(texto)
      @texto = texto
    end
  
    def contar_palabras

      palabras = @texto.split(' ')
      contador = Hash.new(0)
      palabras.each do |palabra|
        contador[palabra.downcase] += 1
      end
      contador.each do |palabra, cuenta|
        puts "#{palabra} #{cuenta}"
      end
    end   
    def to_s
      puts "Nombre del objeto =#{@texto}"
    end
  end
 
  texto = "casa carro carro bicicleta"
  contador = ContadorPalabras.new(texto)
  contador.contar_palabras
  contador.to_s