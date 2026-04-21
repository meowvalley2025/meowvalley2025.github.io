-- 後台 admin.html 僅允許管理員信箱刪除紀錄；請在 Supabase SQL Editor 手動執行（或併入 migration）。
-- JWT email 須與 admin.html 內 ADMIN_EMAIL 一致。

drop policy if exists "boarding_bookings_delete_admin" on public.boarding_bookings;
create policy "boarding_bookings_delete_admin"
  on public.boarding_bookings
  for delete
  to authenticated
  using ((auth.jwt() ->> 'email') = 'meow.valley2025@gmail.com');

drop policy if exists "grooming_bookings_delete_admin" on public.grooming_bookings;
create policy "grooming_bookings_delete_admin"
  on public.grooming_bookings
  for delete
  to authenticated
  using ((auth.jwt() ->> 'email') = 'meow.valley2025@gmail.com');

drop policy if exists "mainecoon_inquiries_delete_admin" on public.mainecoon_inquiries;
create policy "mainecoon_inquiries_delete_admin"
  on public.mainecoon_inquiries
  for delete
  to authenticated
  using ((auth.jwt() ->> 'email') = 'meow.valley2025@gmail.com');
