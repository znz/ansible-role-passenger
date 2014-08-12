# passenger

Install passenger with apache2 using rbenv.

## Requirements

- Ubuntu (<= 13.10)
- Debian

## Role Variables

- Example Rack App Variables:
  - `passenger_example_app_root`
  - `passenger_example_app_owner`
  - `passenger_example_app_group`
  - `passenger_delete_example` : do not install example app and delete example app if installed
- `passenger_packages` : install packages
- Passenger Config:
  - `passenger_max_pool_size` : role default 3
  - `passenger_pool_idle_time` : role default 300
  - `passenger_max_requests` : role default 1000
  - `passenger_stat_throttle_rate` : role default 10
  - `passenger_misc_conf`

## Dependencies

- znzj.rbenv

## Example Playbook

    ---
    - hosts: servers
      roles:
      - znzj.passenger

## License

MIT License
