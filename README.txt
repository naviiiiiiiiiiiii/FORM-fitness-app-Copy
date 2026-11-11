FORM. — 12-MONTH FITNESS + VEGETARIAN MEAL PREP

CONTENTS
index.html, app.js, manifest.webmanifest, icon.svg, sw.js, supabase-setup.sql

WHAT IS READY
- Responsive dashboard for phone and desktop
- 12-month roadmap and four weekly checklists per month
- Weekly exercise routines with simplified illustrations and form cues
- Vegetarian meal cards with illustrative food photography, grocery checklists, and meal prep instructions
- Monthly notes, local progress storage, JSON export/import backups
- Installable PWA when served from HTTPS, with offline app-shell caching

IMPORTANT: This is a ready-to-deploy web app, NOT a live hosted website. Cloud sync will NOT work until you configure Supabase. Images need internet.

FREE HOSTING (GITHUB PAGES)
1. Create a free GitHub account (if eligible) and a new repository.
2. Upload the six files in this folder to the repository root.
3. In repository Settings > Pages, deploy from the main branch / root.
4. Open the HTTPS Pages URL on phone or computer. (Pages is publicly accessible: do not upload personal progress or credentials to the repository.)
5. Install to phone home screen using browser's Add to Home Screen / Install app option.

CLOUD SYNC (SUPABASE FREE TIER)
1. Create a Supabase project and open its SQL Editor.
2. Run the SQL in supabase-setup.sql; it creates a private, per-user progress table with row-level security.
3. In Supabase Authentication, enable Email authentication; review email-confirmation settings.
4. In the FORM. app > Settings, enter the Supabase project URL and PUBLIC publishable/anon key (never the secret/service-role key).
5. Create an account or sign in. The app syncs its JSON progress record to your account.
6. On the second device, open the same hosted app, enter the same Supabase URL and public key, then sign in with the same account.
7. Export a backup before switching devices or restoring older progress. The latest saved copy is used; simultaneous edits on multiple devices can overwrite one another.

NOTES
- Free service plans and policies may change. Hosting and database accounts are separate from ChatGPT Plus.
- Local storage is per browser and may be cleared. Keep backups until cloud sync is active.
- The PDF provides starting workouts and 12 monthly themes, not distinct exercise prescriptions for every week; this app preserves that distinction.
- Photos are illustrative stock images, not exact photos of the recipes. Exercise drawings are simplified icons, not precise anatomical demonstrations.
- For real-life use, the user should adjust food to hunger, growth and activity, and training to ability and recovery.
