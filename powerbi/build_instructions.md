# Power BI Desktop Build Instructions

## 1. Load data
Import `data/employees.csv`, `data/leave_records.csv`, and `data/attendance_summary.csv`.

## 2. Create the model
Use `data_model.md` for relationships and the DateTable DAX in `dax_measures.dax`.

## 3. Add measures
Create the measures from `dax_measures.dax`.

## 4. Apply theme
View → Themes → Browse for themes → select `powerbi/theme.json`.

## 5. Build pages
Follow `page_build_spec.md`:
1. HR Overview
2. Leave Analysis
3. Workforce & Attendance

Use the SVG files in `dashboard/` as layout references.

## 6. QA
Run `qa_checklist.md` and compare headline values with `expected_kpi_snapshot.md`.

## 7. Export
After validating the PBIX, export one PNG screenshot per page and place them in `dashboard/`.

The repository does not claim to contain a PBIX file until an actual Power BI Desktop report has been created and validated.
