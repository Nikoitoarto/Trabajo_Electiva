package com.corhuila.trabajo2_electiva.Controller;

import com.corhuila.trabajo2_electiva.ApiDTO.ApiRes;
import com.corhuila.trabajo2_electiva.Entity.ABaseEntity;
import com.corhuila.trabajo2_electiva.IService.IBaseService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

public class ABaseController <T extends ABaseEntity, S extends IBaseService<T>> {
    protected S service;
    protected String entityName;
    protected ABaseController(S service, String entityName) {
        this.service = service;
        this.entityName = entityName;
    }

    @GetMapping
    public ResponseEntity<ApiRes<List<T>>> findByStateTrue() {
        try {
            return ResponseEntity.ok(new ApiRes<List<T>>("Datos obtenidos", service.findByStateTrue(), true));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(new ApiRes<List<T>>(e.getMessage(), null, false));
        }
    }

    @GetMapping("{id}")
    public ResponseEntity<ApiRes<T>> show(@PathVariable Long id) {
        try {
            T entity = service.findById(id);
            return ResponseEntity.ok(new ApiRes<T>("Registro encontrado", entity, true));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(new ApiRes<T>(e.getMessage(), null, false));
        }
    }

    @PostMapping
    public ResponseEntity<ApiRes<T>> save(@RequestBody T entity) {
        try {
            return ResponseEntity.ok(new ApiRes<T>("Datos guardados", service.save(entity), true));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(new ApiRes<T>(e.getMessage(), null, false));
        }
    }

    @PutMapping("{id}")
    public ResponseEntity<ApiRes<T>> update(@PathVariable Long id, @RequestBody T entity) {
        try {
            service.update(id, entity);
            return ResponseEntity.ok(new ApiRes<T>("Datos actualizados", null, true));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(new ApiRes<T>(e.getMessage(), null, false));
        }
    }

    @DeleteMapping("{id}")
    public ResponseEntity<ApiRes<T>> delete(@PathVariable Long id) {
        try {
            service.delete(id);
            return ResponseEntity.ok(new ApiRes<T>("Registro eliminado", null, true));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(new ApiRes<T>(e.getMessage(), null, false));
        }
    }
}
