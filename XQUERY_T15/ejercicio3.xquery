<clasificacion>
{
    for $equipo in //team
    return
        element team{
            attribute posicion {$equipo/rank/text()},
            $equipo/name,
            element puntos{
                $equipo/points/text(),
                " -",
                sum($equipo/points)                 
            },
            $equipo/played,
            element goles{
                $equipo/goals_scored/text(),
                " - ",
                $equipo/goals_conceded/text()
            },
            element diferencia_de_goles{
                $equipo/goals_scored/text() - $equipo/goals_conceded/text()
            },
            element descenso{
                if($equipo/rank/text() >= 18) then "SI" else "NO"
            }
        }
}
</clasificacion>