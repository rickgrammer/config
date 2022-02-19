while inotifywait -r -e modify,create,delete,move /home/ashfaq/.config/nvim; do
    rsync -avz /home/ashfaq/.config/nvim/ /home/ashfaq/work/config/nvim
    rsync -avz /home/ashfaq/cron/ /home/ashfaq/work/config/cron
done
