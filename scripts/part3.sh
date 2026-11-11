#!/bin/bash
cd /root/lab0 || exit 1

ls -lR claude_monet locker_room first_shift | grep '^-' | sort -k5,5nr | head -n 5

grep -Rih 'макс' claude_monet locker_room first_shift | grep -iv 'отчёт' | sort -r | head -n 4

grep -ihE 'блюд|продукт' claude_monet/kitchen/hot_station/*_task claude_monet/kitchen/cold_station/*_task | sort | wc -w

ls -lR claude_monet locker_room first_shift | grep '^-' | grep -E '^[^ ]+ +2 ' | sort -k9,9r

(head -q -n 1 claude_monet/kitchen/hot_station/*; tail -q -n 1 claude_monet/kitchen/hot_station/*) | sort

grep -i 'гост' claude_monet/hall/guest_reviews | grep -iv 'постоянн' | sort -r | head -n 2

grep -ril 'гост' claude_monet/kitchen/hall_backup | wc -l

rm locker_room/max_resume
rm locker_room/first_menu
rm guest_zone
rm first_shift

cat claude_monet/kitchen/shift_plan
ls -li claude_monet/kitchen/shift_plan
rm claude_monet/kitchen/shift_plan

rm claude_monet/kitchen/cold_station/fedya_task
rmdir claude_monet/kitchen/cold_station
rm -r claude_monet/kitchen/hall_backup

ls -lR
git add .
git commit -m "thirdcmmt"
