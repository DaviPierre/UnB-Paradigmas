% predicados que definem os combinadores em Porlog

  and(true, true).

  or(true, true).
  or(true, false).
  or(false, true).

  not(false).

  seEntão(true, true).
  seEntão(false, false).
  seEntão(false, true).
  
  somenteSe(true, true).
  somenteSe(false, false).
