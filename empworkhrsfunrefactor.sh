
ispresent=$((RANDOM%3))
echo $ispresent

perHourSalary=20
totalWorkingHour=0
day=1


function calculateWorkingHour()
{
        case $ispresent in
                0)
                        workingHour=0
                        ;;

                1)
                        workingHour=8
                        ;;
                2)
                        workingHour=4
                        ;;
        esac
        echo $workingHour
}

while [[ $day -le 20 && $totalWorkingHour -lt 100 ]]
do
        Hour=$(calculateWorkingHour)
        totalWorkingHour=$(($totalWorkingHour + $Hour))

        if [ $totalWorkingHour -gt 100 ]
        then
                totalWorkingHour=$(($totalWorkingHour - $Hour))
                break;
        fi

        ((day++))
done

echo "Total working Hour : "$totalWorkingHour
