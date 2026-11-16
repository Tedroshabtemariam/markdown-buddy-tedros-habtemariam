# Reflection on AI-Assisted Documentation

> **AI Assistance Declaration:** I used ChatGPT by OpenAI on November 16, 2026, for reflection organization and clarity suggestions. The prompt is recorded in `AI_Prompts_Appendix.md`. I checked each statement against the repository and removed unsupported execution, deployment, and peer-review claims. I am responsible for the accuracy and originality of this work.

## 1. How did AI help improve the documentation?

AI helped me turn a basic project description into a clearer README structure. The first response identified sections such as overview, installation, usage, outputs, limitations, license, and author information. The refinement prompt made the outline shorter and converted it into readable Markdown headings and bullets. I did not accept the draft unchanged. I added a repository tree, a variable dictionary, exact relative paths, and explanations of room-hours and student-hours. I also made it clear that the dataset is synthetic and does not describe real students. These revisions made the project easier for another person to understand and reproduce.

## 2. What weaknesses or risks did I notice in the AI output?

AI can write confident statements that are not supported by evidence. A generic draft could claim the R script ran successfully, the `.Rmd` file knitted, or the repository was published even when those checks had not occurred. It could also recommend unnecessary packages or misunderstand the difference between a completed booking and actual room occupancy. I reduced these risks by using base R, checking every filename and path, documenting the measures precisely, and marking RStudio execution and GitHub preview as pending student actions. No real or personal data were provided to AI.

## 3. How did validation and refinement affect the final result?

Validation made the documentation more specific and honest. I checked the Markdown and R Markdown structure with Pandoc, reviewed heading levels and code fences, confirmed local links and file paths, and independently inspected the R formulas. I added a verification pattern that separates the primary R calculation, an independent manual cross-check, and a self spot-check. I also documented limitations so the synthetic results cannot be mistaken for real campus evidence. This process showed that AI is useful for structure and editing, but its output should remain a draft until the author compares it with the real files, runs the code, previews the formatting, and corrects unsupported claims.
