package com.corhuila.trabajo2_electiva.Entity;
import jakarta.persistence.*;

@Entity
@Table(name = "estudiante")
public class Estudiante extends ABaseEntity{
    @Column(name = "nombre", length = 50, nullable = false)
    private String nombre;

    @Column(name = "documento", length = 20, nullable = false, unique = true)
    private String documento;

    @Column(name = "estado")
    private boolean estado;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public Boolean getEstado() {
        return estado;
    }

    public void setEstado(Boolean estado) {
        this.estado = estado;
    }
}