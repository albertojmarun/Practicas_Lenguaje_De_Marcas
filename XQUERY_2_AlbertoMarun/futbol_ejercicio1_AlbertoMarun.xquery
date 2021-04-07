<html>
  <head>
    <title> Ejercicio 1 XQUERY2 </title>
  </head>
  <body>
    <h1> Jornada 38 </h1>
    <table>
        <tr>
          <th> Equipo Local </th>
          <th> Resultado </th>
          <th> Equipo Visitante </th>
        </tr>
    {
        for $match in //evento
        return
        <tr>
        <td> { $match/equipolocal/text() } </td>
        <td> { $match/resultadolocal/text() } - { $match/resultadovisitante/text() } </td>
        <td> { $match/equipovisitante/text() } </td>
        </tr>
    }
    </table>
  </body>
</html>