USE db_ubam;

TRUNCATE tbl_cat_carreras;
CALL SP_getAll_Carreras;
CALL SP_Add_Carreras("Arquitectura","ARQ");
CALL SP_getById_Carreras(1);
CALL SP_Update_Carreras(1,"Ingenieria de Software","ISS");
CALL SP_Delete_Carreras(1);

TRUNCATE tbl_cat_estado;
CALL SP_getAll_Estado;
CALL SP_Add_Estado("Estado de Mexico");
CALL SP_getById_Estado(1);
CALL SP_Update_Estado(1,"Ciudad de Mexico");
CALL SP_Delete_Estado(1);

TRUNCATE tbl_cat_grado;
CALL SP_getAll_Grado;
CALL SP_Add_Grado();
CALL SP_getById_Grado();
CALL SP_Update_Grado();
CALL SP_Delete_Grado();

TRUNCATE tbl_cat_grupo;
CALL SP_getAll_Grupo;
CALL SP_Add_Grupo();
CALL SP_getById_Grupo();
CALL SP_Update_Grupo();
CALL SP_Delete_Grupo();



TRUNCATE tbl_cat_sexo;
CALL SP_getAll_Sexo;
CALL SP_getById_Sexo(2);
CALL SP_Add_Sexo("Maculino");
CALL SP_Update_Sexo(1,"Femenino");
CALL SP_Delete_Sexo(1);

INSERT INTO tbl_ope_persona VALUES(NULL, "Rodrigo", "Hernandez", "Hernandez", "2000-01-09", 2, 1, 1, 1);
INSERT INTO tbl_ope_persona VALUES(NULL, "Aketzali", "Hernandez", "Luna", "2002-06-25", 1, 2, 2, 1);
INSERT INTO tbl_ope_persona VALUES(NULL, "Leida", "Hernandez", "Hernandez", "2000-01-09", 1, 3, 3, 1);
INSERT INTO tbl_ope_persona VALUES(NULL, "Jesus", "Salvador", "Castillo", "1992-03-02", 2, 4, 4, 1);
SELECT * FROM tbl_ope_persona;

INSERT INTO tbl_cat_sexo VALUES(NULL, "Femenino", 1);
INSERT INTO tbl_cat_sexo VALUES(NULL, "Masculino", 1);
SELECT * FROM tbl_cat_sexo;

INSERT INTO tbl_ope_direccion VALUES(NULL, "Gustavo Donis", 0, 0, 55656, "Wenceslao Labra", 1, 1);
INSERT INTO tbl_ope_direccion VALUES(NULL, "Callejon Violeta", 0, 0, 54786, "Acolco", 2, 1);
INSERT INTO tbl_ope_direccion VALUES(NULL, "Gustavo Donis", 0, 0, 55656, "Wenceslao Labra", 1, 1);
INSERT INTO tbl_ope_direccion VALUES(NULL, "Caballeros Aztecas", 2, 4, 54768, "Acolco", 2, 1);
SELECT * FROM tbl_ope_direccion;

INSERT INTO tbl_ope_contacto VALUES(NULL, "rodriigo_ssj@hotmail.com", "5539942617", "55202306758", "5589486586", 1);
INSERT INTO tbl_ope_contacto VALUES(NULL, "aketluna.2506@gmail.com", "5611444859", "5596869785", "5674758675", 1);
INSERT INTO tbl_ope_contacto VALUES(NULL, "leida123@hotmail.com", "5678495869", "5586978485", "5647384858", 1);
INSERT INTO tbl_ope_contacto VALUES(NULL, "jesussalvador@gmail.com", "5679583758", "5503948586", "5593948573", 1);
SELECT * FROM tbl_ope_contacto;

INSERT INTO tbl_cat_municipio VALUES(NULL, "Zumpango", 1, 1);
INSERT INTO tbl_cat_municipio VALUES(NULL, "Teoloyucan", 1, 1);
SELECT * FROM tbl_cat_municipio;

INSERT INTO tbl_cat_estado VALUES(NULL, "Estado de Mexico", 1);
SELECT * FROM tbl_cat_estado;


INSERT INTO tbl_ope_alumno VALUES(NULL, "RHH2034", 1, 1, 1);
INSERT INTO tbl_ope_alumno VALUES(NULL, "LHH2958", 3, 1, 1);
SELECT * FROM tbl_ope_alumno;

INSERT INTO tbl_ope_docente VALUES(NULL, "AHL3956", 2, 1, 1);
INSERT INTO tbl_ope_docente VALUES(NULL, "JSC6535", 4, 1, 1);
SELECT * FROM tbl_ope_docente;

INSERT INTO tbl_cat_grupo VALUES(NULL, "ISC1101", 1, 2, 1, 1);
SELECT * FROM tbl_cat_grupo;

INSERT INTO tbl_cat_carreras VALUES(NULL, "Ingenieria en Sistemas Computacionales", "ISC", 1);
SELECT * FROM tbl_cat_carreras;

INSERT INTO tbl_cat_grado VALUES(NULL, "1101", 1);
SELECT * FROM tbl_cat_grado;

INSERT INTO tbl_cat_turno VALUES(NULL, "Matutino", 1);
INSERT INTO tbl_cat_turno VALUES(NULL, "Vespertino", 1);
SELECT * FROM tbl_cat_turno;

INSERT INTO tbl_ope_materia VALUES(NULL, "Programacion en la nube", 1);
INSERT INTO tbl_ope_materia VALUES(NULL, "Ingles", 1);
SELECT * FROM tbl_ope_materia;

INSERT INTO tbl_ope_calificacion VALUES(NULL, 8.6, 1, 1, 1);
INSERT INTO tbl_ope_calificacion VALUES(NULL, 9.4, 2, 1, 1);
INSERT INTO tbl_ope_calificacion VALUES(NULL, 6.8, 1, 2, 1);
INSERT INTO tbl_ope_calificacion VALUES(NULL, 7.9, 2, 2, 1);
SELECT * FROM tbl_ope_calificacion;

INSERT INTO tbl_rel_materiagrupo VALUES(NULL, 1, 1, 1);
INSERT INTO tbl_rel_materiagrupo VALUES(NULL, 2, 1, 1);
DELETE FROM tbl_rel_materiagrupo WHERE MateriaGrupoId = 2;
SELECT * FROM tbl_rel_materiagrupo;

INSERT INTO tbl_rel_materiacalificacion VALUES(NULL, 1, 1, 1, 1);
INSERT INTO tbl_rel_materiacalificacion VALUES(NULL, 1, 2, 2, 1);
INSERT INTO tbl_rel_materiacalificacion VALUES(NULL, 2, 1, 3, 1);
INSERT INTO tbl_rel_materiacalificacion VALUES(NULL, 2, 2, 4, 1);
DELETE FROM tbl_rel_materiacalificacion WHERE MateriaCalificacion_Activo =1;
ALTER TABLE tbl_rel_materiacalificacion AUTO_INCREMENT = 1;
SELECT * FROM tbl_rel_materiacalificacion;

SELECT
	al.AlumnoId as Alumno_Id,
    pe.Persona_Nombre as Nombre_Alumno,
    gr.Grupo_Nombre as Grupo,
    mg.MateriaGrupo_MateriaId as MateriaId,
    ma.Materia_Materia as Materia,
    ca.Calificacion_Calificacion as Calificacion,
    doc.Docente_Matricula as Matricula,
    pdoc.Persona_Nombre as Docente
FROM tbl_ope_alumno al
INNER JOIN tbl_ope_persona pe on al.Alumno_PersonaId = pe.PersonaId
INNER JOIN tbl_cat_grupo gr on al.Alumno_GrupoId = gr.GrupoId
INNER JOIN tbl_rel_materiagrupo mg on mg.MateriaGrupo_GrupoId = gr.GrupoId
INNER JOIN tbl_ope_materia ma on mg.MateriaGrupo_MateriaId = ma.MateriaId
INNER JOIN tbl_ope_calificacion ca on al.AlumnoId = ca.Calificacion_AlumnoId
INNER JOIN tbl_ope_docente doc on ca.Calificacion_DocenteId = doc.DocenteId
INNER JOIN tbl_ope_persona pdoc on doc.Docente_PersonaId = pdoc.PersonaId
WHERE al.Alumno_Activo = 1;



SELECT
	al.AlumnoId as Alumno_Id,
    pe.Persona_Nombre as Nombre_Alumno,
    gr.Grupo_Nombre as Grupo,
    mg.MateriaGrupo_MateriaId as MateriaId,
    ma.Materia_Materia as Materia,
    ca.Calificacion_Calificacion as Calificacion,
    ca.CalificacionId as Calificacion_Id,
    doc.Docente_Matricula as Matricula,
    pdoc.Persona_Nombre as Docente
FROM tbl_ope_alumno al
INNER JOIN tbl_ope_persona pe on al.Alumno_PersonaId = pe.PersonaId
INNER JOIN tbl_cat_grupo gr on al.Alumno_GrupoId = gr.GrupoId
INNER JOIN tbl_rel_materiagrupo mg on mg.MateriaGrupo_GrupoId = gr.GrupoId
INNER JOIN tbl_ope_materia ma on mg.MateriaGrupo_MateriaId = ma.MateriaId
INNER JOIN tbl_rel_materiacalificacion mc on  ma.MateriaId = mc.MateriaCalificacion_CalificacionId 
INNER JOIN tbl_ope_calificacion ca on al.AlumnoId = ca.Calificacion_AlumnoId
INNER JOIN tbl_ope_docente doc on ca.Calificacion_DocenteId = doc.DocenteId
INNER JOIN tbl_ope_persona pdoc on doc.Docente_PersonaId = pdoc.PersonaId
WHERE al.Alumno_Activo = 1;

