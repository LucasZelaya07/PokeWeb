USE [POKEDEX_DB]
GO
/****** Object:  StoredProcedure [dbo].[storedLista]    Script Date: 2/9/2022 11:20:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[storedLista] as
select Numero, Nombre, P.Descripcion, UrlImagen, E.Descripcion Tipo,
D.Descripcion Debilidad, P.IdTipo, P.IdDebilidad, P.Id, P.Activo
from POKEMONS P, ELEMENTOS E, ELEMENTOS D
Where E.Id = P.IdTipo and D.Id = P.IdDebilidad