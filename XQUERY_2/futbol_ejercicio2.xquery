<table>
  <tr>
    <th> Escudo Equipo </th>
    <th> Nombre </th>
    <th> Puntos </th>
    <th> PJ </th>
    <th> GF </th>
    <th> PG </th>
    <th> PE </th>
    <th> PP </th>
  </tr>
{
  for $match in //clasificacion/team
  return
    <tr>
      <td> <img src="{$match/escudo}"/> </td>
      <td> { $match/name/text() }</td>
      <td> { $match/points/text() }</td>
      <td> { $match/played/text() }</td>
      <td> { $match/goals_scored/text() }</td>
      <td> { $match/won/text() }</td>
      <td> { $match/drawn/text() }</td>
      <td> { $match/lost/text() }</td>
    </tr>
}
</table>