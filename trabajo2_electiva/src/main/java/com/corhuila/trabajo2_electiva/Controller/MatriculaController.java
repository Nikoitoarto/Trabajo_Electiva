package com.corhuila.trabajo2_electiva.Controller;

import com.corhuila.trabajo2_electiva.Entity.Materia;
import com.corhuila.trabajo2_electiva.Entity.Matricula;
import com.corhuila.trabajo2_electiva.IService.IMateriaService;
import com.corhuila.trabajo2_electiva.IService.IMatriculaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("api/matricula")
public class MatriculaController extends ABaseController<Matricula, IMatriculaService>{

    public MatriculaController(IMatriculaService service){super(service, "materia");}

}