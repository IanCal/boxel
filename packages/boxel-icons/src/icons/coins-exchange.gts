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
    class='lucide lucide-coins-exchange'
    viewBox='0 0 24 24'
    ...attributes
  ><path d='M6 10V5c0-1.7 1.3-3 3-3h1' /><path d='m3 7 3 3 3-3' /><circle
      cx='18'
      cy='6'
      r='4'
    /><path d='M18 14v5c0 1.7-1.3 3-3 3h-1' /><path d='m21 17-3-3-3 3' /><circle
      cx='6'
      cy='18'
      r='4'
    /></svg>
</template>;

// @ts-expect-error this is the only way to set a name on a Template Only Component currently
IconComponent.name = 'coins-exchange';
export default IconComponent;
