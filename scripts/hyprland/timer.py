#!/usr/bin/python3
import argparse
import time
import os

def send_notification(summary, body, urgency="normal"):
    # This calls the standard Linux notification command
    os.system(f'notify-send "{summary}" "{body}" -u {urgency} -a "Timer"')

def main():
    parser = argparse.ArgumentParser(
        description="A customizable timer with optional warning."
    )
    parser.add_argument(
        "--msg",
        type=str,
        default="Expired!",
        help="The main message to display when the timer fully expires.",
    )
    parser.add_argument(
        "--msgTimeout",
        type=int,
        default=45,
        help="The main timer duration in minutes (must be a positive integer). Defaults to 45 minutes.",
    )
    parser.add_argument(
        "--warning",
        type=str,
        default="Expiring soon.",
        help="The message to display for the warning notification.",
    )
    parser.add_argument(
        "--warningTimeout",
        type=int,
        default=30,
        help="The time in minutes before the main timeout when the warning should appear (non-negative).",
    )

    args = parser.parse_args()

    main_timeout_seconds = args.msgTimeout
    warning_timeout_seconds = args.warningTimeout
    
    elapsed = 0
    while True:
        elapsed += 1
        time.sleep(60)
        if (elapsed == warning_timeout_seconds):
            send_notification(args.warning, f"Remaining {args.msgTimeout-args.warningTimeout} Minutes")
        if (elapsed == main_timeout_seconds):
            send_notification("Time Expired!", args.msg, urgency="critical")
            break
        print(f'Elapsed Minutes: {elapsed}')
    print(f"Timer started: Main timeout set for {args.msgTimeout} minutes.")

if __name__ == "__main__":
    main()
