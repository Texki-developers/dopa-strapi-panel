import type { Schema, Attribute } from '@strapi/strapi';

export interface ElementsFeatureCard extends Schema.Component {
  collectionName: 'components_elements_feature_cards';
  info: {
    displayName: 'Feature Card';
  };
  attributes: {
    title: Attribute.String;
    icon: Attribute.Media<'images'>;
  };
}

export interface ElementsFacultyCard extends Schema.Component {
  collectionName: 'components_elements_faculty_cards';
  info: {
    displayName: 'Faculty Card';
  };
  attributes: {
    name: Attribute.String;
    designation: Attribute.String;
    education: Attribute.String;
    experience: Attribute.String;
    photo: Attribute.Media<'images'>;
  };
}

export interface ElementsCourseCard extends Schema.Component {
  collectionName: 'components_elements_course_cards';
  info: {
    displayName: 'Course Card';
  };
  attributes: {
    heading: Attribute.String;
    sub_heading: Attribute.String;
  };
}

export interface ElementsAppCard extends Schema.Component {
  collectionName: 'components_elements_app_cards';
  info: {
    displayName: 'App Card';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    description: Attribute.Text;
    image: Attribute.Media<'images'>;
    is_list: Attribute.Boolean & Attribute.DefaultTo<false>;
  };
}

export interface BlocksResults extends Schema.Component {
  collectionName: 'components_blocks_results';
  info: {
    displayName: 'Results';
  };
  attributes: {
    FirstColumnImage: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
    SecondColumnImage: Attribute.Media<
      'images' | 'files' | 'videos' | 'audios'
    >;
  };
}

export interface BlocksImageBlock extends Schema.Component {
  collectionName: 'components_blocks_image_blocks';
  info: {
    displayName: 'Image Block';
  };
  attributes: {
    images: Attribute.Media<'images', true>;
  };
}

export interface BlocksHomeBanner extends Schema.Component {
  collectionName: 'components_blocks_home_banners';
  info: {
    displayName: 'HomeBanner';
  };
  attributes: {
    MainHead: Attribute.String;
    description: Attribute.Text;
    buttonName: Attribute.String;
    buttonLink: Attribute.String;
    image: Attribute.Media<'images' | 'videos'> & Attribute.Required;
  };
}

export interface BlocksFeatureCardRow extends Schema.Component {
  collectionName: 'components_blocks_feature_card_rows';
  info: {
    displayName: 'Feature Card Row';
  };
  attributes: {
    feature_card: Attribute.Component<'elements.feature-card', true>;
  };
}

export interface BlocksFacultyCardRow extends Schema.Component {
  collectionName: 'components_blocks_faculty_card_rows';
  info: {
    displayName: 'faculty_card_row';
  };
  attributes: {
    faculty_card: Attribute.Component<'elements.faculty-card', true>;
  };
}

export interface BlocksDopaUpdates extends Schema.Component {
  collectionName: 'components_blocks_dopa_updates';
  info: {
    displayName: 'DopaUpdates';
  };
  attributes: {
    DopaUpdatesImages: Attribute.Media<
      'images' | 'files' | 'videos' | 'audios',
      true
    >;
  };
}

export interface BlocksDirectorsSection extends Schema.Component {
  collectionName: 'components_blocks_directors_sections';
  info: {
    displayName: 'Directors Section';
    description: '';
  };
  attributes: {
    directors: Attribute.String;
    description: Attribute.Text;
    image: Attribute.Media<'images'>;
    image_alt: Attribute.String;
  };
}

export interface BlocksCourseSection extends Schema.Component {
  collectionName: 'components_blocks_course_sections';
  info: {
    displayName: 'courseSection';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    subtitle: Attribute.String;
    isTitleBold: Attribute.Boolean;
    isSubtitleBold: Attribute.Boolean;
  };
}

export interface BlocksCourseCardRow extends Schema.Component {
  collectionName: 'components_blocks_course_card_rows';
  info: {
    displayName: 'Course Card Row';
  };
  attributes: {
    course_card: Attribute.Component<'elements.course-card', true>;
  };
}

export interface BlocksBanner extends Schema.Component {
  collectionName: 'components_blocks_banners';
  info: {
    displayName: 'Banner';
    icon: 'grid';
    description: '';
  };
  attributes: {
    heading: Attribute.String & Attribute.Required;
    description: Attribute.Text;
    image: Attribute.Media<'images'>;
    split_header: Attribute.Boolean & Attribute.DefaultTo<false>;
  };
}

export interface BlocksAppCardRow extends Schema.Component {
  collectionName: 'components_blocks_app_card_rows';
  info: {
    displayName: 'App Card Row';
  };
  attributes: {
    app_cards: Attribute.Component<'elements.app-card', true>;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'elements.feature-card': ElementsFeatureCard;
      'elements.faculty-card': ElementsFacultyCard;
      'elements.course-card': ElementsCourseCard;
      'elements.app-card': ElementsAppCard;
      'blocks.results': BlocksResults;
      'blocks.image-block': BlocksImageBlock;
      'blocks.home-banner': BlocksHomeBanner;
      'blocks.feature-card-row': BlocksFeatureCardRow;
      'blocks.faculty-card-row': BlocksFacultyCardRow;
      'blocks.dopa-updates': BlocksDopaUpdates;
      'blocks.directors-section': BlocksDirectorsSection;
      'blocks.course-section': BlocksCourseSection;
      'blocks.course-card-row': BlocksCourseCardRow;
      'blocks.banner': BlocksBanner;
      'blocks.app-card-row': BlocksAppCardRow;
    }
  }
}
