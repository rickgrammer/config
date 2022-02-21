while inotifywait -r -e modify,create,delete,move /home/ashfaq/.config/nvim /home/ashfaq/cron; do
    rsync -avz /home/ashfaq/.config/nvim/ /home/ashfaq/config/nvim
    rsync -avz /home/ashfaq/cron/ /home/ashfaq/config/cron
done
