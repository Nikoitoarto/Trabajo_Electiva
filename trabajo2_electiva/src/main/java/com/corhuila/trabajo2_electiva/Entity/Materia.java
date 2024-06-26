package com.corhuila.trabajo2_electiva.Entity;

import jakarta.persistence.*;

@Entity
@Table(name = "materia")
public class Materia extends ABaseEntity{

    @Column(name = "codigo", nullable = false)
    private String codigo;

    @Column(name = "nombre", length = 20, nullable = false, unique = true)
    private String nombre;

    @Column(name = "estado")
    private Boolean estado;

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Boolean getEstado() {
        return estado;
    }

    public void setEstado(Boolean estado) {
        this.estado = estado;
    }
}