-- Crown & Collective Haute Hair Atelier OS Seed Data

INSERT INTO atelier_services (slug, name, category, price, duration_minutes, description) VALUES
  ('sculptural-dry-cut', 'The Sculptural Dry Cut & Curl Architecture', 'sculpture', 285.00, 90, 'An architectural dry carve that honors the anatomical curl helix and structural fall pattern.'),
  ('dimensional-clay-balayage', 'Organic Dimensional Clay Balayage', 'color', 420.00, 180, 'Low-toxicity organic French clay painting customized to melanin-rich curl patterns without moisture compromise.'),
  ('scalp-detox-steam-infusion', 'Ancestral Scalp Detox & Botanical Steam Infusion', 'ritual', 195.00, 60, 'Herbal clay clarifying mask paired with hyper-pure ozone steam micro-mist and scalp lymphatic stimulation.'),
  ('editorial-curl-couture', 'Editorial Curl Couture Experience', 'bespoke', 550.00, 240, 'Full bespoke atelier transformation including structural contour, gloss enrichment, and luxury silk finish.');

INSERT INTO atelier_stylists (slug, name, title, specialty, chair_number, is_available) VALUES
  ('sanaa-vance', 'Sanaa Vance', 'Creative Director & Founder', 'Sculptural Precision & Curl Architecture', 1, true),
  ('kendrick-cole', 'Kendrick Cole', 'Master Color Alchemist', 'Dimensional Clay Painting & Melanin Lift', 2, true),
  ('amara-st-clair', 'Amara St. Clair', 'Lead Trichologist & Scalp Specialist', 'Botanical Steam Infusions & Scalp Health', 3, true);

INSERT INTO atelier_bookings (service_id, service_name, client_name, client_email, client_phone, preferred_stylist, booking_date, booking_time, price, status) VALUES
  ('sculptural-dry-cut', 'The Sculptural Dry Cut & Curl Architecture', 'Solange Knowles', 'solange@saint-heron.com', '(323) 555-0144', 'Sanaa Vance', CURRENT_DATE, '11:00 AM', '$285', 'in_chair'),
  ('dimensional-clay-balayage', 'Organic Dimensional Clay Balayage', 'Michaela Coel', 'michaela@fable-pictures.co.uk', '(310) 555-0812', 'Kendrick Cole', CURRENT_DATE, '02:00 PM', '$420', 'confirmed'),
  ('scalp-detox-steam-infusion', 'Ancestral Scalp Detox & Botanical Steam Infusion', 'Tessa Thompson', 'tessa@collective.com', '(424) 555-0921', 'Amara St. Clair', CURRENT_DATE, '04:30 PM', '$195', 'confirmed');
