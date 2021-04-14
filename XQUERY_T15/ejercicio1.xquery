<html>
  <head>
    <title> Ejercicio 1 XQUERY T16 </title>
  </head>
  <body style="margin: 5% 10%">
    <h1 style="text-align:center"> Jornada 38 - La Liga - Alberto Marun </h1>
    <table style="border: solid black 3px; width: 100%; text-align: center">
        <tr style="border: solid black 3px; text-align: center">
          <th style="border: solid black 3px; text-align: center"> Equipo Local </th>
          <th style="border: solid black 3px; text-align: center"> Resultado </th>
          <th style="border: solid black 3px; text-align: center"> Equipo Visitante </th>
          <th style="border: solid black 3px; text-align: center"> 1 </th>
          <th style="border: solid black 3px; text-align: center"> X </th>
          <th style="border: solid black 3px; text-align: center"> 2 </th>
        </tr>
    {
        for $match in //evento
        return
        <tr style="border: solid black 3px; text-align: center">
        <td style="border: solid black 3px; text-align: center"> { $match/equipolocal/text() } </td>
        <td style="border: solid black 3px; text-align: center"> { $match/resultadolocal/text() } - { $match/resultadovisitante/text() } </td>
        <td style="border: solid black 3px; text-align: center"> { $match/equipovisitante/text() } </td>
        <td style="border: solid black 3px; text-align: center{if ($match/resultadolocal/text() > $match/resultadovisitante/text() ) then "; background-color:gray" else ";"}"> </td>
        <td style="border: solid black 3px; text-align: center{if ($match/resultadolocal/text() = $match/resultadovisitante/text() ) then "; background-color:gray" else ";"}"> </td>
        <td style="border: solid black 3px; text-align: center{if ($match/resultadolocal/text() < $match/resultadovisitante/text() ) then "; background-color:gray" else ";"}"> </td>
        </tr>
    }
    </table>
  </body>
</html>