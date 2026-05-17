# Normal CV Two-Page Fill Design

## Goal

Make the normal CV fill two A4 pages more completely while keeping it visibly distinct from the extended CV and preserving its concise, recruiter-friendly role.

## Approved Direction

Use a balanced mix:

- Add only high-signal missing content from the extended CV.
- Tune typography and spacing conservatively after content changes.
- Avoid turning the normal CV into a duplicate of the extended CV.

## Content Changes

The normal CV should gain selective detail where the current version looks under-filled or under-sells relevant experience:

- Add one Dorsum bullet that shows documentation architecture or compliance-to-development work.
- Add one compact education line or certification detail only if it improves page balance after experience edits.
- Keep the clinical research and data engineering positioning intact.
- Keep the side-project list compact; do not add the full Publications & Writing section from the extended CV.

## Styling Changes

Use `resume_styling.css` for shared layout tuning, but keep changes small enough that the extended CV still renders cleanly:

- Prefer small increases in vertical rhythm over large font-size changes.
- Tune paragraph, list, and section spacing before changing page margins.
- Do not make the document look artificially stretched.

## Verification

The implementation must regenerate both PDFs with `make convert`.

The normal CV must:

- Remain exactly two A4 pages.
- Have the second page filled more intentionally than the current output.
- Keep readable spacing and no obvious overflow.

The extended CV must:

- Remain exactly two A4 pages.
- Not suffer obvious layout regression from shared CSS changes.

Use `pdfinfo` for page count and a visual PDF check for page balance.
