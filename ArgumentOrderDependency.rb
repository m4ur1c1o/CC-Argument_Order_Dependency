class ContactInformation
  def initialize(nombre: ,telefono: , celular: ,email: ,referencia:, colonia:, municipio:, ciudad: , codigo_postal:, calle:, num_ext:, num_int: nil, pais: "México", mayor_de_edad: false, estado:)
    @nombre, @telefono, @celular, @email = nombre, telefono, celular, email 
    @referencia, @colonia, @municipio = referencia, colonia, municipio
    @ciudad, @codigo_postal, @estado = ciudad, codigo_postal, estado
    @calle, @num_ext, @num_int, @pais, @mayor_de_edad = calle, num_ext, num_int, pais, mayor_de_edad
  end
  def to_s
    "Nombre: #{@nombre}#{mayor_de_edad}, telefono: (#{@telefono}), celular: (#{@celular}), email: <#{@email}> \n Dirección: #{@calle} #{numero}, #{@colonia}, #{@municipio}, #{@ciudad}, #{@estado}, #{@codigo_postal}, #{@pais} \n Referencia: #{@referencia}"
  end

  def numero
    "#{@num_ext}#{"-#{@num_int}" if @num_int}"
  end

  def mayor_de_edad
    unless @mayor_de_edad
      "*"
    end
  end
end

puts ContactInformation.new(nombre: "Juan Perez Jr", telefono: "3891089238", celular: "04455832189491", email: "juanito@gmail.com", referencia: "entre calles x, z", colonia: "Cuauhtémoc", municipio: "Benito Juárez", ciudad: "México", estado: "Distrito Federal", codigo_postal: "07500", calle: "Chapultepec", num_ext: "500", num_int: "B")

puts ContactInformation.new(nombre: "Juan Perez", telefono: "3891089238", celular: "04455832189491", email: "juanito@gmail.com", referencia: "entre calles x, z", colonia: "Cuauhtémoc", municipio: "Benito Juárez", ciudad: "México", estado: "Distrito Federal", codigo_postal: "07500", calle: "Chapultepec", num_ext: "500", num_int: nil, pais: "México", mayor_de_edad: true)