// This file is auto-generated by 'pnpm rebuild:all'
import type { TemplateOnlyComponent } from '@ember/component/template-only';

import type { Signature } from '../types.ts';

const IconComponent: TemplateOnlyComponent<Signature> = <template>
  <svg
    xmlns='http://www.w3.org/2000/svg'
    width='24'
    height='24'
    fill='none'
    stroke='currentColor'
    stroke-linecap='round'
    stroke-linejoin='round'
    stroke-width='2'
    class='lucide lucide-square-split-vertical'
    viewBox='0 0 24 24'
    ...attributes
  ><path
      d='M5 8V5c0-1 1-2 2-2h10c1 0 2 1 2 2v3M19 16v3c0 1-1 2-2 2H7c-1 0-2-1-2-2v-3M4 12h16'
    /></svg>
</template>;

// @ts-expect-error this is the only way to set a name on a Template Only Component currently
IconComponent.name = 'square-split-vertical';
export default IconComponent;
