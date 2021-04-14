declare variable $ganar := "https://png.pngtree.com/png-clipart/20190603/original/pngtree-creative-three-dimensional-metal-win-png-image_387725.jpg";
declare variable $perder := "https://png.pngtree.com/png-clipart/20200701/original/pngtree-wrong-number-png-image_5418896.jpg";

<html>
  <head>
    <title> Ejercicio 2 XQUERY T16 </title>
  </head>
  <body style="margin: 5% 10%">
    <h1 style="text-align:center"> Jornada 38 - La Liga - Alberto Marun </h1>
    <table style="border: solid black 3px; width: 100%; text-align: center">
        <tr style="border: solid black 3px; text-align: center">
          <th style="border: solid black 3px; text-align: center"> Badge </th>
          <th style="border: solid black 3px; text-align: center"> Equipo Local </th>
          <th style="border: solid black 3px; text-align: center"> Resultado </th>
          <th style="border: solid black 3px; text-align: center"> Equipo Visitante </th>
          <th style="border: solid black 3px; text-align: center"> Badge </th>
        </tr>
    {
        for $match in //evento
        return
        <tr style="border: solid black 3px; text-align: center">
          {if($match/resultadolocal/text() > $match/resultadovisitante/text()) then <td> <img style="max-width: 80px;" src="{$ganar}" alt="ImagenGanador"/></td> else ()}
          {if($match/resultadolocal/text() < $match/resultadovisitante/text()) then <td> <img style="max-width: 80px;" src="{$perder}" alt="ImagenPerdedor"/></td> else ()}
          {if($match/resultadolocal/text() = $match/resultadovisitante/text()) then <td style="width: 80px; height: 80px;"> </td> else()}
          <td style="border: solid black 3px; text-align: center"> { $match/equipolocal/text() } </td>
          <td style="border: solid black 3px; text-align: center"> { $match/resultadolocal/text() } - { $match/resultadovisitante/text() } </td>
          <td style="border: solid black 3px; text-align: center"> { $match/equipovisitante/text() } </td>
          {if($match/resultadolocal/text() < $match/resultadovisitante/text()) then <td> <img style="max-width: 80px;" src="{$ganar}" alt="ImagenGanador"/></td> else ()}
          {if($match/resultadolocal/text() > $match/resultadovisitante/text()) then <td> <img style="max-width: 80px;" src="{$perder}" alt="ImagenPerdedor"/></td> else ()}
          {if($match/resultadolocal/text() = $match/resultadovisitante/text()) then <td style="width: 80px; height: 80px;"> </td> else()}
        </tr>
    }
    </table>
  </body>
</html>