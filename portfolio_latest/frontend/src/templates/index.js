import { modernMinimalistTemplate } from './modernMinimalist';
import { creativeDarkTemplate } from './creativeDark';
import { professionalCorporateTemplate } from './professionalCorporate';
import { developerFocusedTemplate } from './developerFocused';
import { modernCreativeTemplate } from './modernCreative';
import tattooArtist from './tattooArtist';
import photographerMinimal from './photographerMinimal';
import designerBio from './designerBio';

export const templates = {
  'modern-minimalist': modernMinimalistTemplate,
  'creative-dark': creativeDarkTemplate,
  'professional-corporate': professionalCorporateTemplate,
  'developer-focused': developerFocusedTemplate,
  'modern-creative': modernCreativeTemplate,
  'tattoo-artist': tattooArtist,
  'photographer-minimal': photographerMinimal,
  'designer-bio': designerBio
};

export const getTemplate = (templateId) => {
  return templates[templateId] || templates['modern-minimalist'];
};

export const getAllTemplates = () => {
  return Object.entries(templates).map(([id, template]) => ({
    id,
    ...template
  }));
};
