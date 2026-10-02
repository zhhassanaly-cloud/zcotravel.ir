-- ZCO V12 service-first requests
alter table public.trips
add column if not exists request_type text not null default 'full_trip',
add column if not exists service_data jsonb not null default '{}'::jsonb;

create index if not exists trips_request_type_idx on public.trips(request_type);
