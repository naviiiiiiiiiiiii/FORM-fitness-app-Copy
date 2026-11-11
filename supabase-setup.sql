-- Run this in your own Supabase project's SQL Editor.
-- Never disable row-level security or use a service-role key in the app.
create table if not exists public.form_progress (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.form_progress enable row level security;
create policy "read own progress" on public.form_progress for select to authenticated using ((select auth.uid()) = user_id);
create policy "insert own progress" on public.form_progress for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "update own progress" on public.form_progress for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
