<html>
  <head>
    <title> Ejercicio 3 XQUERY2 </title>
  </head>
  <body>
      {
      let $stadistics := //clasificacion
      return
        <table>
          <tr>
            <th> Estadisticas </th>
            <th> Equipo </th>
          </tr>
          <tr>
            <td>Numero de Equipos:</td>
            <td>{$stadistics/count(.//team) }</td>
          </tr>
          <tr>
            <td>Nº Total de goles marcados</td>
            <td>{$stadistics/sum(.//team/goals_scored/text())}</td>
          </tr>
          <tr>
            <td>Equipo más goleador  Nº de goles</td>
            <td>{$stadistics/team[goals_scored = $stadistics/max(team/goals_scored)]/name/text()} - {$stadistics/max(team/goals_scored)}</td>
          </tr>
          <tr>
            <td>Equipo menos goleador nº de goles:</td>
            <td>{$stadistics/team[goals_scored = $stadistics/min(team/goals_scored)]/name/text()} - {$stadistics/min(team/goals_scored)}</td>
          </tr>
          <tr>
            <td>Equipo con más partidos ganados</td>
            <td>{$stadistics/team[won = $stadistics/max(team/won)]/name/text()} - {$stadistics/max(team/won)}</td>
          </tr>
          <tr>
            <td>Equipo con más partidos empatados</td>
            <td>{$stadistics/team[drawn = $stadistics/max(team/drawn)]/name/text()} - {$stadistics/max(team/drawn)}</td>
          </tr>
        </table>
      }
  </body>
</html>