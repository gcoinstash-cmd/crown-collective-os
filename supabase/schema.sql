-- Crown & Collective Haute Hair Atelier OS Database Schema
-- Row Level Security (RLS) Enabled

CREATE TABLE IF NOT EXISTS atelier_bookings (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  service_id TEXT NOT NULL,
  service_name TEXT NOT NULL,
  client_name TEXT NOT NULL,
  client_email TEXT NOT NULL,
  client_phone TEXT,
  preferred_stylist TEXT,
  booking_date DATE NOT NULL,
  booking_time TEXT NOT NULL,
  price TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'confirmed' CHECK (status IN ('pending', 'confirmed', 'in_chair', 'completed', 'cancelled')),
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS atelier_services (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  category TEXT NOT NULL CHECK (category IN ('sculpture', 'color', 'ritual', 'bespoke')),
  price NUMERIC(10, 2) NOT NULL,
  duration_minutes INT NOT NULL,
  description TEXT NOT NULL,
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS atelier_stylists (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  title TEXT NOT NULL,
  specialty TEXT NOT NULL,
  chair_number INT NOT NULL,
  is_available BOOLEAN DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Row Level Security
ALTER TABLE atelier_bookings ENABLE ROW LEVEL SECURITY;
ALTER TABLE atelier_services ENABLE ROW LEVEL SECURITY;
ALTER TABLE atelier_stylists ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read access to services"
  ON atelier_services FOR SELECT
  USING (true);

CREATE POLICY "Allow public read access to stylists"
  ON atelier_stylists FOR SELECT
  USING (true);

CREATE POLICY "Allow public insert to bookings"
  ON atelier_bookings FOR INSERT
  WITH CHECK (true);

CREATE POLICY "Allow public read access to bookings"
  ON atelier_bookings FOR SELECT
  USING (true);
