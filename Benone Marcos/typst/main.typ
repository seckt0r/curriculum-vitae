
#import "template.typ": *

#show: doc => cv(
  name: "Benone Marcos",
  position: "Investigador · Gestor de Projectos · Profissional de TIC",
  contacts: (
    "Estrada da Pedreira, 00. Bairro 17 de Setembro. Zona da Vidrul. Cacuaco - Luanda, Angola",
    "(+244) 947 032 659",
    "benone.marcos@gmail.com",
    "github.com/benone",
    "linkedin.com/in/benone",
    "ORCID:0000-0002-1573-8855",
  ),
  doc,
)

#include "cv-sections/education.typ"
#include "cv-sections/experience-profissional.typ"
#include "cv-sections/skills.typ"
#include "cv-sections/extracurricular.typ"
#include "cv-sections/presentation.typ"
#include "cv-sections/writing.typ"
#include "cv-sections/committees.typ"
#include "cv-sections/links.typ"
#include "cv-sections/notas.typ"
