/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './src/pages/**/*.{js,ts,jsx,tsx,mdx}',
    './src/components/**/*.{js,ts,jsx,tsx,mdx}',
    './src/app/**/*.{js,ts,jsx,tsx,mdx}'
  ],
  theme: {
    extend: {
      colors: {
        llorange: { DEFAULT: '#E35825', 50: '#F8D5C8', 100: '#F6C7B6', 200: '#F1AB91', 300: '#EC8F6D', 400: '#E87449', 500: '#E35825', 600: '#B84318', 700: '#873111', 800: '#551F0B', 900: '#230D05', 950: '#0A0401' },
        llyellow: { DEFAULT: '#FCBD40', 50: '#FFFBF5', 100: '#FFF5E1', 200: '#FEE7B9', 300: '#FDD990', 400: '#FDCB68', 500: '#FCBD40', 600: '#FBAA09', 700: '#C98603', 800: '#916102', 900: '#5A3C01', 950: '#3F2A01' }
      },
      backgroundImage: {
        'gradient-radial': 'radial-gradient(var(--tw-gradient-stops))',
        'gradient-conic':
          'conic-gradient(from 180deg at 50% 50%, var(--tw-gradient-stops))'
      },
      fontFamily: {
        sans: ['var(--font-inter)'],
        mono: ['var(--font-roboto-mono)'],
        body: ['var(--font-lato']
      }
    }
  },
  plugins: [
    require('@tailwindcss/forms')
  ]
}